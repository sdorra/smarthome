# smarthome

One of the most over engineered smarthome server.

## Setup development environment

```bash
./smarthome up
```

### install kubconfig

TODO

### install helm

```bash
    kubectl apply -f resources/helm-rbac-config.yaml
helm init --service-account tiller
```

### apply workload

```bash
helmfile apply
kubectl apply -f resources/coredns-db.yaml
```

## Cleanup

```bash
./smarthome down
```