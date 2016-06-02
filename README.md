# Hygieia Dashboard Small deploy

*What is Hygieia ? https://github.com/capitalone/Hygieia*

**This is a test tool to deploy the testing version of Hygieia dashboard. It is small and just allow some features of the Dashboard**

## How to use it

- clone the repo and launch the script (magic happens every where).
- Copy `env_file.dist` to `env_file`
- Edit `env_file` following the [the rules](#the-rules)
- Launch `get_hygieia.sh`
- Test ;)

## The Rules

*If you obey all the rules you miss all the fun*, Katharine Hepburn.

| Group             | Name                                         | Usage | Default |
| ----------------- | -------------------------------------------- |
| Global Hygieia    | HYGIEIA_API_ENV_SPRING_DATA_MONGODB_USERNAME | Set the name for MongoDB user. | db |
|                   | HYGIEIA_API_ENV_SPRING_DATA_MONGODB_PASSWORD | Set password to be used for MongoDB | dbpass |
| Jira Collector    | JIRA_CRON | Set the CRON for Jira (CRON = Regularity of the operation) | 0 * * * * * |
|                   | JIRA_PROXY_URL | Set the proxy url for jira if you have one. If you have none, delete it | x |
|                   | JIRA_PROXY_PORT | Set the port for jira proxy if you have one. If none, delet it | x |
|                   | JIRA_BASE_URL | Set the url of the jira you want to look | https://jira.atlassian.com |
|                   | JIRA_QUERY_ENDPOINT | Where hygieia should look for the api | /rest/api/2 |
|                   | JIRA_CREDITENTIALS | Encoded creditential for hygieia to have access on some private part of your Jira. Use `echo "username:password" \| base64` to generate. [reference](https://www.base64decode.org/) | x |
| Jenkins Collector | JENKINS_CRON | Set the CRON for Jenkins | 0 0/5 * * * * |
|                   | JENKINS_MASTER | Url for jenkins masters to look (one required) | http://jenkins.company.com |
|                   | JENKINS_USERNAME | Use to set Jenkins Username | x |
|                   | JENKINS_API_KEY  | Use it to set Api Key if needed | x |
|                   | DOCKER_LOCALHOST | Set entry localhost | x |
|                   | JENKINS_OP_CENTER | Map entry localhost with jenkins center | x |
| Github Collector  | GITHUB_CRON | Same as other CRON for git. | 0 0/5 * * * * |
|                   | GITHUB_HOST | Set host for github :p | github.com |

You can find more options by going to hygieia official web site https://github.com/capitalone/Hygieia and look at their documentation for widgets
