k create namespace dvl1987

k create configmap time-config --from-literal=TIME_FREQ=10

k run --generator=run-pod/v1 time-check --image=busybox --dry-run -o yaml > pod.yaml