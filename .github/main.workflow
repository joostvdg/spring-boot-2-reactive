workflow "Jenkins single-shot master" {
  on = "push"
  resolves = ["jenkinsfile-runner-prepackaged"]
}

action "jenkinsfile-runner-prepackaged" {
  uses = "jenkinsfile-runner-prepackaged"
  runs = "jonico/jenkinsfile-runner-github-actions/jenkinsfile-runner-prepackaged@master"
  secrets = ["GITHUB_TOKEN"]
}
