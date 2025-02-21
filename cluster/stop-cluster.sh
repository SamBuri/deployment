#!/bin/bash
sudo systemctl stop kubelet
sudo systemctl stop containerd
# sudo systemctl stop etcd kube-apiserver kube-scheduler kube-controller-manager
echo "Kubernetes cluster stopped."
