#!/bin/bash

# $ENV_FILE variable is sourced here
source base.sh

openstack overcloud deploy \
    --templates \
    -r roles_data.yaml \
    --timeout 90 \
    -e /usr/share/openstack-tripleo-heat-templates/environments/host-config-and-reboot.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/neutron-sriov.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/docker.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/docker-ha.yaml \
    -e registry.yaml \
    -e $ENV_FILE \
    -e sriov-environment.yaml \
    -e common-environment.yaml \
    -e docker_registry.yaml

# Post Deploy Workarounds
# systemctl start virtlogd.socket

