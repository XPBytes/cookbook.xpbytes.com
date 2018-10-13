# cookbook.xpbytes.com

## Locally provided cookbooks
Chef 12+ requires each cookbook to have a `name` field.

The `deployer` cookbook is locally provided because at time of packaging version 0.1.1 was the latest released and did
not include the name field. When re-packaging, check the newest `deployer`. If the current version has `name` in its
`metadata.rb`, remove the local cookbook line from `Berksfile`

## Package cookbook
In order to use this on AWS Chef 12+, where BerksShelf is not enabled, you need to package all the cookbooks into an
archive and upload it to the correct S3 endpoint.

```
berks package
```

Rename the generate file from `cookbooks-unixtimestamp.tar.gz` to `cookbooks.tar.gz`

## Upload cookbook

- [Login](https://xpbytes.signin.aws.amazon.com/console) the AWS console
- Go to S3 / Simple Storage Solution
- Find `cookbook.xpbytes.com`
- Upload the generated `.tar.gz`

## Renew cookbooks on servers

- Go to OpsWorks
- Run a command to update the cookbooks
- Either redeploy or run one or more recipies
