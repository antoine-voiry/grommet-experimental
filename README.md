# grommet-experimental
Docker file to work with Grommet

Based on node:0.12


To build
     docker build -t grommet .
    

To run with 

    Build sample app (assuming the /my_windows_folder/grommet_docker/data is the folder where you want the app on host)
         docker run -i -t -v=/home/centos/grommet/grommet-experimental/data:/data:rw grommet grommet init sample-app
    Run sample app (assuming the /my_windows_folder/grommet_docker/data/sample-app is the folder where you want the app to run on host)
         docker run -d -p 9000:9000 -v /home/centos/grommet/grommet-experimental/data/sample-app:/data:rw gulp dev 
    

    
    
TODO
    - Test and fix bugs
    - PUSH IN HPIT registry
    - push in 
    
References
			http://www.grommet.io/docs/develop/get-started
			https://docs.docker.com/reference/run/#volume-shared-filesystems
			https://docs.docker.com/examples/nodejs_web_app/
			https://docs.docker.com/articles/dockerfile_best-practices/
			https://github.com/grommet/grommet-vagrant
			http://dockerfile.github.io/#/nodejs-bower-gulp
			
			
			https://github.com/nodejs/docker-node/issues/10

https://github.com/docker-library/python/blob/15798abb6cfb145344462a345db4b572227fb859/2.7/Dockerfile
