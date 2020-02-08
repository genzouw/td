# td (Treasure Data Client) on Docker

[![Docker Cloud build status](https://img.shields.io/docker/cloud/build/genzouw/td?style=for-the-badge)](https://hub.docker.com/r/genzouw/td/)
[![Docker Pulls](https://img.shields.io/docker/pulls/genzouw/td.svg?style=for-the-badge)](https://hub.docker.com/r/genzouw/td/)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/genzouw/td.svg?style=for-the-badge)](https://hub.docker.com/r/genzouw/td/)

[![dockeri.co](https://dockeri.co/image/genzouw/td)](https://hub.docker.com/r/genzouw/td)

## Description

This is a Docker image wrapping the command line client tool `td` of" Treasure Data ".
Ruby installation, Gem installation, authentication information, etc. can all be managed by Docker container.

*Please contact me anytime if you have a problem or request! My information is posted at the bottom of this document.*

## Requirements

All you need is one.

* [Docker](https://www.docker.com/)

## Installation

**You do not need to install !**

## Usage

authenticate by running:

```bash
# Authentication settings to use APIKEY
$ docker run --name td-config genzouw/td apikey:set '*********************************************'
API key is set.
Use 'td db:create <db_name>' to create a database.
```

OR

```bash
# Authentication settings to use USER_ID and PASSWORD
$ docker run --name td-config genzouw/td account
```

Once you authenticate successfully, credentials are preserved in the volume of the **td-config** container.

To list databases using these credentials, run the container with --volumes-from:

```bash
# Execute (ex: `db:list`)
$ docker run --rm --volumes-from td-config genzouw/td db:list
+--------------------+------------+
| Name               | Count      |
+--------------------+------------+
| sample_datasets    | 0          |
| information_schema | 0          |
| genzouw_db         | 1153098416 |
+--------------------+------------+
3 rows in set
```

**I recommend that you set the following alias in `~/.*rc`.**

```bash
$ alias td='docker run --rm --volumes-from td-config genzouw/td'
```

## License

This software is released under the MIT License, see LICENSE.


## Help

Got a question ?

File a [Github issue](https://github.com/genzouw//issues), send an email to [genzouw@gmail.com](mailto:genzouw@gmail.com) or tweet to [@genzouw](https://twitter.com/genzouw) on Twitter.

## Author Information

[genzouw](https://genzouw.com)

* Twitter   : @genzouw ( https://twitter.com/genzouw )
* Facebook  : genzouw ( https://www.facebook.com/genzouw )
* LinkedIn  : genzouw ( https://www.linkedin.com/in/genzouw/ )
* Gmail     : genzouw@gmail.com
