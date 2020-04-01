FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN pip install compiledb && \
    brew install flex bc

RUN sudo apt-get -q update && \
    sudo apt-get install -yq gcc-aarch64-linux-gnu g++-aarch64-linux-gnu && \
    sudo rm -rf /var/lib/apt/lists/*