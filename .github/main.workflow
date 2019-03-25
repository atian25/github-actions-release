workflow "Unit Test" {
  resolves = ["github-actions-release", "act2"]
  on = "pull_request"
}

action "github-actions-release" {
  uses = "./"
  args = "check --test=abc"
}

action "act2" {
  uses = "./"
  args = "deploy --a=bb"
}
