# Anisible_App


### What is pipeline ?
    
    1) In DevOps Terminology, a sequence of steps that happends both conditionally and unconditionally is referred as a pipeline.
    2) A pileine is nothing but a groups of stages
    3) A Stage is nothing but a groups of tasks

### We are going to write everything in the form of code, that's the pattern of GitOps.
    1) GitOps refers all the actions should be in the form of code and hosted on git.
    2) This gives an opportunity to version control the changes.
    3) And at the same time, it can help us with approvals


All the gocd pipeline will be hosted in this repository.


To generate encrypted gocd string :  ( Keep in mind secret encrypted by one GoCD cannot be decrypted by other GoCD )
[encrypted_password](https://github.com/tomzo/gocd-yaml-config-plugin?tab=readme-ov-file#to-generate-an-encrypted-value)

```

Syntax: 
```
    $ curl 'https://ci.example.com/go/api/admin/encrypt' -u 'username:password' -H 'Accept: application/vnd.go.cd.v1+json' -H 'Content-Type: application/json' -X POST -d '{ "value": "badger"}'
```

$ curl 'http://localhost:8153/go/api/admin/encrypt' -H 'Accept: application/vnd.go.cd.v1+json' -H 'Content-Type: application/json' -X POST -d '{ "value": "DevOps321"}'

$ curl 'http://localhost:8153/go/api/admin/encrypt' -H 'Accept: application/vnd.go.cd.v1+json' -H 'Content-Type: application/json' -X POST -d '{ "value": "ExpenseApp@1"}'