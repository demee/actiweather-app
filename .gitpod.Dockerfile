FROM gitpod/workspace-full

# Run this from your terminal.
# Replace OS with one of “linux”, “darwin”, “windows”, “freebsd”, “openbsd”
# Replace ARCH with one of “amd64”, “386” or “arm”

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh \
             && sdk install java 14.0.2.j9-adpt"

RUN bash -c "wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
    mkdir -p ~/bin && \
    tar -xvzf heroku-linux-amd64.tar.gz -C ~/bin && \
    echo \"export PATH=$PATH:~/bin/heroku/bin\" >> ~/.bash_profile"

# ensure that /usr/local/bin is in the PATH environment variable

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
