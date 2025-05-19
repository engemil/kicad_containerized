FROM ubuntu:latest

# Update
RUN apt-get update

# Add KiCad Repository PPA
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:kicad/kicad-9.0-releases -y

# Update (again after adding repository to apt) and Upgrade
RUN apt-get update && apt-get upgrade -y

# git - For version control. https://packages.ubuntu.com/noble/git
RUN apt-get install git -y

# python3 - Needed for KiCad. NB! Comes with Ubuntu
#RUN apt install python3 -y

# kicad - KiCad
RUN apt install kicad -y

# Clean up
RUN rm -rf /var/lib/apt/lists/*

# Make workspace directory
RUN mkdir /workspace

# NB! Test first to see if it works. Might be conflicting with how the folder is created with devcontainer.json.
# Making changes in that folder useless from the Dockerfile.

WORKDIR /workspace
# Command to run KiCad
#CMD ["kicad"]
