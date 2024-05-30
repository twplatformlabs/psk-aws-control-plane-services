#!/usr/bin/env bats

@test "evaluate metrics-server status" {
  run bash -c "kubectl get po -n kube-system -o wide | grep 'metrics-server'"
  [[ "${output}" =~ "Running" ]]
}

@test "evaluate metrics-server health" {
  run bash -c "kubectl get --raw '/apis/metrics.k8s.io/v1beta1/nodes'"
  [[ "${output}" =~ "NodeMetricsList" ]]
}

@test "evaluate kube-state-metrics status" {
  run bash -c "kubectl get po -n kube-system -o wide | grep 'kube-state-metrics'"
  [[ "${output}" =~ "Running" ]]
}

@test "evaluate kube-state-metrics health" {
  run bash -c "kubectl logs deployment/kube-state-metrics -n kube-system -c kube-state-metrics"
  [[ "${output}" =~ "Started kube-state-metrics self metrics server" ]]
}

@test "evaluate event-exporter status" {
  run bash -c "kubectl get po -n kube-system -o wide | grep 'event-exporter'"
  [[ "${output}" =~ "Running" ]]
}