#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

KUBECONFIG="${DIR}/../build/kube_config_cluster.yml"
export KUBECONFIG

# etcd
helm install stable/etcd-operator --namespace kube-system --name etcd-operator --values "${DIR}/etcd-operator.yaml"
kubectl apply -f "${DIR}/coredns-db.yaml"

helm install --name coredns --namespace kube-system --values "${DIR}/coredns.yaml" stable/coredns


helm install --name external-dns --namespace kube-system --values "${DIR}/external-dns.yaml" stable/external-dns