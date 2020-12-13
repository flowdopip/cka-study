## Rollout

kubectl set image deployment/frontend www=image:v2               # Aplica o rollout nos containers "www" do deployment "frontend", atualizando a imagem
kubectl rollout history deployment/frontend                      # Verifica o histórico do deployment, incluindo a revisão
kubectl rollout undo deployment/frontend                         # Rollback para o deployment anterior
kubectl rollout undo deployment/frontend --to-revision=2         # Rollback para uma revisão específica
kubectl rollout status -w deployment/frontend                    # Acompanhe o status de atualização do "frontend" até sua conclusão sem interrupção 
kubectl rollout restart deployment/frontend                      # Reinício contínuo do deployment "frontend"


# versão inicial descontinuada 1.11
kubectl rolling-update frontend-v1 -f frontend-v2.json           # (descontinuada) Atualização contínua dos pods de frontend-v1
kubectl rolling-update frontend-v1 frontend-v2 --image=image:v2  # (descontinuada) Altera o nome do recurso e atualiza a imagem
kubectl rolling-update frontend --image=image:v2                 # (descontinuada) Atualize a imagem dos pods do frontend
kubectl rolling-update frontend-v1 frontend-v2 --rollback        # (descontinuada) Interromper o lançamento existente em andamento

cat pod.json | kubectl replace -f -                              # Substitua um pod com base no JSON passado para std

# Força a substituição, exclui e recria o recurso. Causará uma interrupção do serviço.
kubectl replace --force -f ./pod.json

# Crie um serviço para um nginx replicado, que serve na porta 80 e se conecta aos contêineres na porta 8000
kubectl expose rc nginx --port=80 --target-port=8000