workflow "on pull_request" {
  resolves = ["github-actions-release-check"]
  on = "pull_request"
}

action "github-actions-release-check" {
  uses = "./"
  args = "check --test=abc"
  secrets = ["GITHUB_TOKEN"]
}

workflow "on push" {
  resolves = [
    "github-actions-release",
  ]
  on = "push"
}

action "only on master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "github-actions-release" {
  needs = ["only on master"]
  uses = "./"
  args = "check --test=abc"
  secrets = ["GITHUB_TOKEN"]
}

workflow "on check_run" {
  on = "check_run"
  resolves = ["github-actions-release-check"]
}

workflow "on check_suite" {
  on = "check_suite"
  resolves = ["github-actions-release-check"]
}

