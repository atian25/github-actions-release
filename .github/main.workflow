workflow "Unit Test" {
  resolves = ["github-actions-release"]
  on = "pull_request"
}

workflow "Test2" {
  resolves = [ "act2"]
  on = "push"
}

action "github-actions-release" {
  uses = "./"
  args = "check --test=abc"
  secrets = ["GITHUB_TOKEN"]
}

action "act2" {
  uses = "./"
  args = "deploy --a=bb"
  secrets = ["GITHUB_TOKEN"]
}
