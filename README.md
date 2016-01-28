Quickstart
==========

I followed https://deis.com/blog/2016/paas-continuous-integration-deployment
in general to get to this setup.

On Mac:

1. Get Jenkins master node up and running:
  ```
  brew install docker-compose # installs docker-machine + docker
  docker-machine up
  ```

2. Add a user and restrict access to Jenkins (cause it's alive!)

3. Create a pipeline job that grabs pipeline configuration from SCM, enable GitHub polling

4. [Wire up Jenkins to GitHub](jenkins-gh-hook)

  * get token from GitHub
  * add token as "secret-text" in Jenkins
  * jigger "GitHub Plugin Configuration" in Jenkins settings
  * Press the Verify Credentials button
  * in "Advanced Button" click "re-register hooks for all jobs"

[https://wiki.jenkins-ci.org/display/JENKINS/Github+Plugin#GitHubPlugin-TriggerabuildwhenachangeispushedtoGitHub]: jenkins-gh-hook
