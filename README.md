[DeployURL]:                https://heroku.com/deploy?template=https://github.com/ranran9/heroku2heroku "Deploy"
[DeployIMG]:                https://www.herokucdn.com/deploy/button.png

deploy heroku in heroku

## Deploy
`heroku2heroku` could be easily deployed to Heroku
Please login user/pass is root/toor

[![Deploy][DeployIMG]][DeployURL]

## Environment Variables

  Some config options can be overridden with environment variables such:

  - Http authentication config.
  
  | KEY | VALUE |
  | ------ | ------ |
  | CLOUDCMD_AUTH | true |
  | CLOUDCMD_USER_ID | root |
  | CLOUDCMD_PASS | toor |

  - Git config

  | KEY | VALUE |
  | ------ | ------ |
  | GIT_AUTHOR_NAME |  |
  | GIT_COMMITTER_NAME |  |
  | EMAIL |  |

  - .netrc config(1)
  
   use for github.com
  
  | KEY | VALUE |
  | ------ | ------ |
  | NETRC_MACHINE_1 |  |
  | NETRC_LOGIN_1 |  |
  | NETRC_PASSWORD_1 |  |

  - .netrc config(2) 
  
  use for git.heroku.com

  | KEY | VALUE |
  | ------ | ------ |
  | NETRC_MACHINE_2 |  |
  | NETRC_LOGIN_2 |  |
  | NETRC_PASSWORD_2 |  |

  - .netrc config(3)
  
  use for api.heroku.com

  | KEY | VALUE |
  | ------ | ------ |
  | NETRC_MACHINE_3 |  |
  | NETRC_LOGIN_3 |  |
  | NETRC_PASSWORD_3 |  |
