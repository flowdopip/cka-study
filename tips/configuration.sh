# Set kubectl alias
alias k='kubectl'

# use vários arquivos kubeconfig ao mesmo tempo e visualize a configuração mergeada
KUBECONFIG=~/.kube/config:~/.kube/kubconfig2 

kubectl config view

# obtenha a senha para o usuário e2e
kubectl config view -o jsonpath='{.users[?(@.name == "e2e")].user.password}'

kubectl config view -o jsonpath='{.users[].name}'    # exibir o primeiro usuário
kubectl config view -o jsonpath='{.users[*].name}'   # obtenha uma lista de usuários
kubectl config get-contexts                          # exibir lista de contextos
kubectl config current-context                       # exibir o contexto atual
kubectl config use-context my-cluster-name           # defina o contexto padrão como my-cluster-name

# adicione um novo cluster ao seu kubeconfig que suporte autenticação básica
kubectl config set-credentials kubeuser/foo.kubernetes.com --username=kubeuser --password=kubepassword

# salve o namespace permanentemente para todos os comandos subsequentes do kubectl nesse contexto.
kubectl config set-context --current --namespace=ggckad-s2

# defina um contexto utilizando um nome de usuário e o namespace.
kubectl config set-context gce --user=cluster-admin --namespace=foo && kubectl config use-context gce
 
# excluir usuário foo
kubectl config unset users.foo

# Edite o serviço chamado docker-registry
kubectl edit svc/docker-registry

# Use um editor alternativo
KUBE_EDITOR="nano" kubectl edit svc/docker-registry
