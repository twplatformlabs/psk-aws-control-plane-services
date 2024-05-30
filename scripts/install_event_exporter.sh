#!/usr/bin/env bash
set -eo pipefail

cluster_name=$1
CHART_VERSION=$(jq -er .event_exporter_chart_version environments/$cluster_name.json)

echo "kubernetes-event-exporter chart version $CHART_VERSION"

helm upgrade --install event-exporter oci://registry-1.docker.io/bitnamicharts/kubernetes-event-exporter \
             --version $CHART_VERSION \
             --namespace kube-system \
             --values event-exporter/$cluster_name-values.yaml
