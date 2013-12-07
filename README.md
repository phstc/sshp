SSHP - Let's Pablo memorize your SSH credentials.

## Instalation

```sh
gem install sshp
```

## Usage

To save an alias without hostname:

```sh
sshp-alias u -i ~/keys/my_key.pem -l ubuntu
```

Then

```sh
sshp u hostname.com
```
To save an alias with hostname:

```sh
sshp-alias u -i ~/keys/my_key.pem -l ubuntu hostname.com
```
Then

```sh
sshp u
```

## .sshp

All aliases will be saved at `~/.sshp`.

## ssh_config

Remember that you can also use [ssh_config](http://linux.die.net/man/5/ssh_config) for many cases in place of sshp.

```sh
# ~/.ssh/config
Host u
    HostName hostname.com
    User ubuntu
    IdentityFile ~/keys/my_key.pem
```

Then

```sh
ssh u
```

Have a look at ["Simplify Your Life With an SSH Config File"](http://nerderati.com/2011/03/simplify-your-life-with-an-ssh-config-file/) it is a well detailed post about ssh_config.
