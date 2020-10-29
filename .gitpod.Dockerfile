FROM gitpod/workspace-full

# Run this from your terminal.
# Replace OS with one of “linux”, “darwin”, “windows”, “freebsd”, “openbsd”
# Replace ARCH with one of “amd64”, “386” or “arm”

RUN wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz &&\    
    tar -xvzf heroku-linux-amd64.tar.gz -C ~/bin &&\
    export PATH=$PATH:~/bin/heroku/bin

# ensure that /usr/local/bin is in the PATH environment variable

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
