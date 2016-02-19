# Openshift oadm admin command line tool for interacting with Openshift 3

# Summary

- A Docker build for the oadm command line tool, used to control Openshift. For more info, see [Managing Nodes](https://docs.openshift.com/enterprise/3.0/admin_guide/manage_nodes.html)

# Requirements

- Docker :whale: - if you are on Mac, checkout the [Docker Toolbox](http://docs.docker.com/mac/step_one/)

# To build the Docker image

- Build the image using docker
```bash
$ docker build -t openshift-oadm-docker .
```
- Run the container
```bash
$ docker run -ti --rm openshift-oadm-docker oadm version
```
- Optionally add an alias to your local profile so you can run the container as a cli (you may also want to mount kube config or pass env vars...)
```bash
$ alias oc='docker run --rm -ti openshift-oadm-docker oadm'
$ oadm version
```

# Alternatively, you can use the Docker Hub automated build

[![](https://badge.imagelayers.io/danielwhatmuff/openshift-oadm-docker:latest.svg)](https://imagelayers.io/?images=danielwhatmuff/openshift-oadm-docker:latest 'Get your own badge on imagelayers.io')

```bash
$ docker pull danielwhatmuff/openshift-oadm-docker
```

### Contributing
File issues in GitHub to report bugs or issue a pull request to contribute.
