SSHP - Let's Pablo memorize your SSH credentials.

## Instalation

```sh
gem install sshp
```

## Usage

To save an alias without hostname.

```sh
sshp-alias u -i ~/keys/my_key.pem -l ubuntu
```

Then

```sh
sshp u hostname.com
```
To save an alias with hostname.

```sh
sshp-alias u -i ~/keys/my_key.pem -l ubuntu hostname.com
```
Then

```sh
sshp u
```

## .sshp

All aliases will be saved at `~/.sshp`.
