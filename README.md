#Docker file to get a container that supports Grommet.

Objective is to simplify the setup process for Grommet for non Linux users.


<b>Currently based on</b> node:0.12

- [ ] To build the container
    docker build -t grommet .
  Users that are behind a corporate firewall must ensure that the host running docker has proxy properly setup.

- [ ] To run with 
		- [ ] Assuming that /home/centos/grommet/grommet-experimental/data is the host directory where your application will be running
    Build sample app 
         docker run -i -t -v=/home/centos/grommet/grommet-experimental/data:/data:rw grommet grommet init sample-app
    Run sample app 
         docker run -d -p 9000:9000 -v /home/centos/grommet/grommet-experimental/data/sample-app:/data:rw gulp dev 
    

    
    
    
<b>References, useful links</b>
	- http://www.grommet.io/docs/develop/get-started
	- https://docs.docker.com/reference/run/#volume-shared-filesystems
	- https://docs.docker.com/examples/nodejs_web_app/
	- https://docs.docker.com/articles/dockerfile_best-practices/
	- https://github.com/grommet/grommet-vagrant
	- http://dockerfile.github.io/#/nodejs-bower-gulp
	- https://github.com/nodejs/docker-node/issues/10
	- https://github.com/docker-library/python/blob/15798abb6cfb145344462a345db4b572227fb859/2.7/Dockerfile
