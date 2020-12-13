## Persistent Volume

# Listar PersistentVolumes classificado por capacidade
kubectl get pv --sort-by=.spec.capacity.storage