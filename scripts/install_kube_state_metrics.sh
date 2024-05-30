#!/usr/bin/env bash
set -eo pipefail

cluster_name=$1
CHART_VERSION=$(jq -er .kube_state_metrics_chart_version environments/$cluster_name.json)

echo "kube-state-metrics chart version $CHART_VERSION"
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm upgrade --install kube-state-metrics prometheus-community/kube-state-metrics \
             --version $CHART_VERSION \
             --namespace kube-system \
             --values kube-state-metrics/$cluster_name-values.yaml
