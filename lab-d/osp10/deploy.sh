openstack overcloud deploy --templates \
    --timeout 90 \
    -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/neutron-sriov.yaml \
    -e network-environment.yaml

