# Devbox

### A vagrant box for development under Docker and in Emacs

Ready for github/bitbucket: just put your ssh keys in home/.ssh/ (naming gh-id and bb-id respectvely).

## What's inside

+ Latest stable [Docker](https://docs.docker.com/)
+ [Docker Compose](https://docs.docker.com/compose/) 1.2.0 with [command completions](https://docs.docker.com/compose/completion/)
+ [Emacs](https://www.gnu.org/software/emacs/) 24 no X
+ [Busybox](https://registry.hub.docker.com/_/busybox/) docker image
+ [HTop](http://hisham.hm/htop/)

### Plus some fun stuff

+ [Asciinema](https://asciinema.org)
+ [Fortune](http://en.wikipedia.org/wiki/Fortune_%28Unix%29),
  [cowsay](http://en.wikipedia.org/wiki/Cowsay),
  [lolcat](https://launchpad.net/ubuntu/+source/lolcat) &
  [figlet](http://www.figlet.org/)

## Quick setup

Clone the repo:

```
git clone https://github.com/aleksandr-vin/devbox.git
cd devbox
```

No you can just call `./setup.sh`, or perform a full step job:

```
cp ~/.ssh/${YOUR_GITHUB_SSH_KEY} home/.ssh/gh-id
cp ~/.ssh/${YOUR_BITBUCKET_SSH_KEY} home/.ssh/bb-id
```

Add your `.gitconfig`:

```
cp ~/.gitconfig home/
```

Add any other _home config_ to the `home`:

```
cp ~/{.bashrc,.profile} home/
```

And fire-up your box:

```
vagrant up && vagrant ssh
```
