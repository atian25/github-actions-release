workflow "Unit Test" {
  on = "push"
  resolves = ["github-actions-release", "act2"]
}

action "github-actions-release" {
  uses = "./"
  args = "check --test=abc"
}

action "act2" {
  uses = "./"
  args = "deploy --a=b"
}