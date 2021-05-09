# App Templates

This repository hosts the official templates (**'Apps Templates'**) definitions for Portainer.

For more information about the template definition format and how to deploy your own templates, see the [relevant documentation section](https://documentation.portainer.io/v2.0/templates/deploy_stack/).

To build custom template server do the following:
$ git clone https://github.com/portainer/templates.git portainer-templates
$ cd portainer-templates
# Edit the file templates.json
$ docker build -t portainer-templates .
$ docker run -d -p "8080:80" portainer-templates
