#!/bin/bash

nc=`kubectl get nodes | tail -n +2 | wc -l`
pc=`kubectl get pods -A | tail -n +2 | wc -l`
rpc=`kubectl get pods -A | tail -n +2 | grep Running | wc -l`

echo "custom, kubernetes_cluster, node_count, $nc"
echo "custom, kubernetes_cluster, pod_count, $pc"
echo "custom, kubernetes_cluster, running_pod_count, $rpc"
