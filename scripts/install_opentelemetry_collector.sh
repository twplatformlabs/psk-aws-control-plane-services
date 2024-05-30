#!/usr/bin/env bash
set -eo pipefail

cluster_name=$1
CHART_VERSION=$(jq -er .opentelemetry_collector_chart_version environments/$cluster_name.json)

echo "opentelemetry collector chart version $CHART_VERSION"
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts

helm upgrade --install opentelemetry-collector open-telemetry/opentelemetry-collector \
             --version $CHART_VERSION \
             --namespace kube-system \
             --values opentelemetry-collector/$cluster_name-values.yaml
