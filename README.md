# Full Circle [![CircleCI](https://circleci.com/gh/mashrikt/full-circle/tree/master.svg?style=svg)](https://circleci.com/gh/mashrikt/full-circle/tree/master)

A simple Django application with Restframework. The project has some authentication endpoints implemented with
rest-auth. Test cases for Rest API endpoints are written with pytest.

## Set Up CircleCI
Login to your CircleCI account with Github. Click on 'ADD PROJECTS' on the left nav-bar. Then, click 'Set Up Project'
next to the name of your project. In the next page, click 'Start Building'. Then from 'INSIGHTS' on left nav-bar click
on the 'Settings Wheel' next to your project and then select 'SSH Permissions'. Generate a Key-Value pair (with empty
pass phrase):
```
$ ssh-keygen -t rsa
```
add this private key with 'Add SSH Key'.

In your .cicleci/config.yml file:
If you've set a Hostname for you SSH Key, then you need to uncomment the add_ssh_keys and add the corresponding
fingerprint.

You also need to set your appropriate hostname and IP address to the ssh-keygen -R and ssh-keyscan -H commands.
Also add the proper Dokku host (dokku@dokku.me:app-name) to the git push command.

## Deploying to Dokku
Transfer the public key you generated in the previous step to your remote host where you have installed Dokku.
Then add the ssh-key
```
$ sudo dokku ssh-keys:add YOUR_PUBLIC_KEY
```
Create the Dokku app and a new Postgres and link them.

Merge or commit to the master branch of your Github Project and it should be deployed to Dokku if the build and test
passes.

## Reference
[CircleCI Configuration](https://circleci.com/docs/2.0/configuration-reference/)
