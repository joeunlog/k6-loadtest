# Deploy k6 loadtest to k8s cluster by helm

You should deploy k6-operator first, and deploy k6-loadtest

```
helm install k6-loadtest . -n k6 --create-namespace
```

Define k6 loadtest scenario in `k6.js`

Define k6 loadtest replica, k6-image, cronjob schedule in `values.yaml`