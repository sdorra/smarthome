#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

KUBECONFIG="${DIR}/../build/kube_config_cluster.yml"
export KUBECONFIG

helm install --namespace kube-system --name host-path-provisioner sdorra/host-path-provisioner