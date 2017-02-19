#!/bin/bash
set -eux

subscription-manager register --activationkey= --org=
subscription-manager attach --pool=


subscription-manager repos --enable="rhel-7-server-openstack-9-director-rpms"
subscription-manager repos --enable="rhel-7-server-openstack-9-rpms"
subscription-manager repos --enable="rhel-7-server-extras-rpms"
subscription-manager repos --enable="rhel-7-server-rhscon-2-installer-rpms"

yum -y install os-collect-config python-zaqarclient os-refresh-config os-apply-config openstack-heat-templates python-oslo-log python-psutil ansible
