Atlassian JIRA source building tools
=========================

[![licence badge]][licence]

# File Construction

```
.
├── atlassian-jira-software-7.2.1-source
├── docker-compose.yml
├── entrypoint.sh
└── third-party-libraries
    ├── jms-1.1.jar
    ├── jmxri.jar
    ├── jmxtools.jar
    ├── jndi.jar
    ├── jta-1.0.1b.jar
    ├── mail.jar
    └── ojdbc7.jar
```

`atlassian-jira-software-7.2.1-source` is a directory of Atlassian JIRA source, you contact Atlassian Co, even if you are their customer. 

`third-party-libraries` is a directory of license permission libraries, you need to collect from [specified website](https://developer.atlassian.com/jiradev/jira-platform/jira-architecture/building-jira-from-source).

# Usage

Run `docker-command`.

[licence]: <LICENSE>
[licence badge]: http://img.shields.io/badge/license-MIT-blue.svg?style=flat
