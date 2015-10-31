FROM node:0.12.7-wheezy

RUN apt-get install -y  python2.7  python2.7-dev 
RUN npm install -g bower gulp --save-dev && npm link gulp && npm install -g grommet

# Define working directory.
WORKDIR /data



# replace this with your application's default port
EXPOSE 9000

# Define default command.
#CMD ["bash"]


