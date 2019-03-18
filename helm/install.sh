#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

KUBECONFIG="${DIR}/../build/kube_config_cluster.yml"
export KUBECONFIG

kubectl --kubeconfig="${KUBECONFIG}" apply -f "${DIR}/rbac-config.yaml"
helm init --service-account tiller --history-max 200

helm repo update
