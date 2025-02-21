#!/bin/bash
sudo systemctl start containerd
sudo systemctl start kubelet
# sudo systemctl start etcd kube-apiserver kube-scheduler kube-controller-manager
echo "Kubernetes cluster started."
