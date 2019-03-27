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
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  args = "info egg"
}
