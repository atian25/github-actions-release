workflow "Unit Test" {
  on = "push"
  resolves = ["github-actions-release"]
}

action "github-actions-release" {
  uses = "./"
  args = "check"
}
