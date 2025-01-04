#!/usr/bin/env bats

@test "evaluate metrics-server status" {
  run bash -c "kubectl get po -n kube-system -o wide | grep 'metrics-server'"
  [[ "${output}" =~ "Running" ]]
}

# if metrics-server launched without errors, should see arch info for running context
@test "evaluate metrics-server health" {
  run bash -c "kubectl get --raw '/apis/metrics.k8s.io/v1beta1/nodes'"
  [[ "${output}" =~ "kubernetes.io/arch" ]]
  [[ "${output}" =~ "arm64" ]]
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

@test "evaluate event-exporter health" {
  run bash -c "kubectl logs deployment/event-exporter -n kube-system -c event-exporter"
  [[ "${output}" =~ "Scaled up replica set event-exporter" ]]
}


#!/usr/bin/env bats

@test "evaluate metrics-server status" {
  run bash -c "kubectl get po -n kube-system -o wide | grep 'metrics-server'"
  [[ "${output}" =~ "Running" ]]
}

# if metrics-server launched without errors, should see arch info for running context
@test "evaluate metrics-server health" {
  run bash -c "kubectl get --raw '/apis/metrics.k8s.io/v1beta1/nodes'"
  [[ "${output}" =~ "kubernetes.io/arch" ]]
  [[ "${output}" =~ "arm64" ]]
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

# if event-exporter is functioning, should see events from hpa-test
@test "evaluate event-exporter health" {
  run bash -c "kubectl logs deployment/event-exporter -n kube-system -c event-exporter"
  [[ "${output}" =~ "Started container php-apache" ]]
}
