#!/bin/bash

kubectl -n nginxhello delete httproute nginxhello --wait
kubectl -n nginxhello delete gateway http-gw --wait
kubectl delete gatewayclass envoy-gateway --wait
kubectl delete namespace envoy-gateway-system --wait
kubectl delete namespace nginxhello --wait
