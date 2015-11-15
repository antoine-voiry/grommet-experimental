FROM node:4.2.2-wheezy

# remove several traces of debian python
RUN apt-get purge -y python.*

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8
# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

RUN groupadd -r grommet && useradd -ms /bin/bash -g grommet grommet


WORKDIR /home/grommet/data
# install GULP and GROMMET

RUN npm install -g bower gulp --save-dev 
RUN npm link gulp
run npm install -g grommet

RUN chgrp -R grommet /home/grommet && chown -R grommet /home/grommet

USER grommet
# Define working directory.
WORKDIR /home/grommet/data



# replace this with your application's default port
#EXPOSE 9000

# Define default command.
CMD ["bash"]


