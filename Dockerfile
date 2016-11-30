FROM gitlab/gitlab-runner

MAINTAINER Poy Chang

# install node, npm, bower, grunt, lftp and sass
RUN apt-get update
RUN apt-get install -y nodejs ruby lftp libfontconfig
RUN sudo su -c "gem install sass"
RUN npm update -g npm
RUN npm install -g gulp-cli
RUN npm install -g bower


#ADD entrypoint /
#RUN chmod +x /entrypoint

#ENTRYPOINT ["/entrypoint"]
