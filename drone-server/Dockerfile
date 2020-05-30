
# base Ubuntu image
FROM ubuntu

# Do system updates and install dependencies
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git wget
RUN apt-get clean

# Download Drone.io
RUN wget http://downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb

# Expose the Drone.io port
EXPOSE 8080

ENV DRONE_SERVER_PORT 0.0.0.0:8080
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite

# Define our GitHub oAuth keys below
ENV DRONE_GITHUB_CLIENT af5367b99d0238589eb2
ENV DRONE_GITHUB_SECRET b4fb32572f507409f5b18d797d6041a93da31885

# The command we'll be running when the container starts
CMD /usr/local/bin/droned
