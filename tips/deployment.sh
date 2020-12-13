## Deployments

kubectl create deployment nginx --image=nginx --dry-run=client -o yaml

# Escalar automaticamente um deployment "foo"
kubectl autoscale deployment foo --min=2 --max=10
