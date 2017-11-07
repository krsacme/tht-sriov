#!/bin/bash

openstack overcloud container image prepare \
  --namespace docker-registry.engineering.redhat.com/rhosp12 \
  --prefix openstack- \
  --suffix docker \
  --tag=20171004.1 \
  --service-environment-file /usr/share/openstack-tripleo-heat-templates/environments/docker.yaml \
  --env-file docker_registry.yaml


#sed -i 's/docker:/-docker:/g' docker_registry.yaml
echo "  DockerInsecureRegistryAddress: docker-registry.engineering.redhat.com" >> docker_registry.yaml
echo "  DockerNamespace: docker-registry.engineering.redhat.com/rhosp12" >> docker_registry.yaml
echo "  DockerNamespaceIsRegistry: true" >> docker_registry.yaml
