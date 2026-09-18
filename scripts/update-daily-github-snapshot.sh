#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
output_file="${1:-$repo_root/data/github-daily.json}"
github_user="${GITHUB_PROFILE_USER:-${GITHUB_REPOSITORY_OWNER:-Yukibei}}"
api_url="${GITHUB_API_URL:-https://api.github.com}"
snapshot_date="$(TZ=Asia/Shanghai date +%F)"
generated_at="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

request_headers=(
  -H "Accept: application/vnd.github+json"
  -H "X-GitHub-Api-Version: 2022-11-28"
)

if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  request_headers+=(-H "Authorization: Bearer $GITHUB_TOKEN")
fi

profile_json="$(curl --fail --silent --show-error --retry 3 "${request_headers[@]}" \
  "$api_url/users/$github_user")"
repos_json="$(curl --fail --silent --show-error --retry 3 "${request_headers[@]}" \
  "$api_url/users/$github_user/repos?per_page=100&type=owner&sort=updated")"

mkdir -p "$(dirname "$output_file")"
temporary_file="$(mktemp)"
trap 'rm -f "$temporary_file"' EXIT

jq -n \
  --arg date "$snapshot_date" \
  --arg generated_at "$generated_at" \
  --argjson profile "$profile_json" \
  --argjson repos "$repos_json" \
  '{
    date: $date,
    generated_at: $generated_at,
    profile: {
      login: $profile.login,
      public_repositories: $profile.public_repos,
      public_gists: $profile.public_gists,
      followers: $profile.followers,
      following: $profile.following
    },
    repositories: {
      owned_non_forks: ([$repos[] | select(.fork == false)] | length),
      stars: ([$repos[] | select(.fork == false) | .stargazers_count] | add // 0),
      forks: ([$repos[] | select(.fork == false) | .forks_count] | add // 0)
    }
  }' > "$temporary_file"

mv "$temporary_file" "$output_file"
printf 'Updated %s for %s\n' "$output_file" "$snapshot_date"
