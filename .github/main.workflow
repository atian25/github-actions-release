workflow "on pull_request" {
  resolves = ["github-actions-release-check"]
  on = "pull_request"
}

action "github-actions-release-check" {
  uses = "./"
  args = "check --test=abc"
  secrets = ["GITHUB_TOKEN"]
}
