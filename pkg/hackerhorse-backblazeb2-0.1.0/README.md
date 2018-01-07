# backblazeb2

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics](#setup)
    * [Setup requirements](#setup-requirements)
3. [Usage](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)
6. [Contributors - whodunnit?](#contributors)
7. [Changelog](#changelog)

## Description

Install the Backblaze b2 client on FreeBSD or Linux!
https://www.backblaze.com/b2/cloud-storage.html

## Setup

### Setup Requirements

You need to be running a FreeBSD or Linux system, 
and have a backblaze account.

After installing this module, you'll want to do the following:
- Switch to the new b2 user
- Setup Backblaze b2 auth and create a bucket: https://www.backblaze.com/b2/docs/quick_bucket.html
- Edit manifests/cron.pp: Replace $folder with the folder you want to sync, and $bucketname with your b2 Bucket's name
- Kick back and relax!

## Usage

To start, simply download the module, and add:
`include backblazeb2` to a manifest


## Limitations

I have not added the File directive to store and replace the auth token because that would be #BadOpsec!

## Development

You can contribute by forking https://github.com/RainbowHackerHorse/puppet_backblazeb2
and opening a PR.

## Contributors

* Rainbow (RainbowHackerHorse)

## Changelog
* 0.1.0 - Initial release 

