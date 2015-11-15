#Docker file to get a container that supports Grommet.

Objective is to simplify the setup process for Grommet for non Linux users.



**Currently based on node:4.2.2-wheezy docker image**

##Latest changes:##

* Upgraded Node version
* Added a grommet users to avoid creating all files as root
* Better Readme file

##Usage ##
- **To build the container**

    docker build -t grommet .
    
    
      Users that are behind a corporate firewall must ensure that the host running docker has proxy properly setup.
      
      Most users will download or inherit the container


- **To run the container on your local machine**

	**Assumptions:** 

    1. /home/centos/grommet/grommet-experimental/data is the host directory where your application will be running
    2. Your local docker machine is running on IP address 192.168.1.1 
       
		
    **Build sample app**
     
         docker run -i -t -v=/home/centos/grommet/grommet-experimental/data:/data:rw grommet grommet init sample-app
         
    This will create and initialize the Grommet sample application outside of the container.
    
    This enables users to use their favorite editor to develop their application.
    
          
    **Run sample app** 
     
         docker run -d -p 9000:9000 -v /home/centos/grommet/grommet-experimental/data/sample-app:/data:rw gulp dev
          
     Open your browser at http://192.168.1.1:9000/sample-app
    

##Enjoy and share feedback## 

It surely still needs quite some improvements
    
    
    
##References, useful links##

- http://www.grommet.io/docs/develop/get-started
- https://docs.docker.com/examples/nodejs_web_app/
- https://github.com/grommet/grommet-vagrant
- http://dockerfile.github.io/#/nodejs-bower-gulp
