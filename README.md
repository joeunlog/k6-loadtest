# Deploy k6 loadtest to k8s cluster by helm

You should deploy [k6-operator](https://github.com/joeunlog/k6-operator) first, and deploy k6-loadtest

---

## Create js

Define k6 loadtest scenario in `k6.js`
> Like `k6.js` , create your own js for loadtest.

Define k6 loadtest replica, `k6_file`, k6-image, cronjob schedule in `values.yaml`


```
helm install k6-loadtest . -n k6 --create-namespace
```
