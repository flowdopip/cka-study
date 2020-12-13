kubectl api-resources --namespaced=true      # Todos os recursos com namespace
kubectl api-resources --namespaced=false     # Todos os recursos sem namespace
kubectl api-resources -o name                # Todos os recursos com saída simples (apenas o nome do recurso)
kubectl api-resources -o wide                # Todos os recursos com saída expandida (também conhecida como "ampla")
kubectl api-resources --verbs=list,get       # Todos os recursos que suportam os verbos de API "list" e "get"
kubectl api-resources --api-group=extensions # Todos os recursos no grupo de API "extensions"
