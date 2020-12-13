## Nodes

# Obter todos os nós workers (use um seletor para excluir resultados que possuem uma label
# nomeado 'node-role.kubernetes.io/master')
kubectl get node --selector='!node-role.kubernetes.io/master'

# Obter ExternalIPs de todos os nós
kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}'

# Verifique quais nós estão prontos
JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status};{end}{end}' \
 && kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"

kubectl cordon my-node                                                # Marcar o nó my-node como não agendável
kubectl drain my-node                                                 # Drene o nó my-node na preparação para manutenção
kubectl uncordon my-node                                              # Marcar nó my-node como agendável
kubectl top node my-node                                              # Mostrar métricas para um determinado nó
kubectl cluster-info                                                  # Exibir endereços da master e serviços
kubectl cluster-info dump                                             # Despejar o estado atual do cluster no stdout
kubectl cluster-info dump --output-directory=/path/to/cluster-state   # Despejar o estado atual do cluster em /path/to/cluster-state

# Se uma `taint` com essa chave e efeito já existir, seu valor será substituído conforme especificado.
kubectl taint nodes foo dedicated=special-user:NoSchedule
