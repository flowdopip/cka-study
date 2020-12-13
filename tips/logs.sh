kubectl logs my-pod                                 # despejar logs de pod (stdout)
kubectl logs -l name=myLabel                        # despejar logs de pod, com a label de name=myLabel (stdout)
kubectl logs my-pod --previous                      # despejar logs de pod (stdout) para a instância anterior de um contêiner
kubectl logs my-pod -c my-container                 # despejar logs de um específico contêiner em um pod (stdout, no caso de vários contêineres)
kubectl logs -l name=myLabel -c my-container        # despejar logs de pod, com nome da label = myLabel (stdout)
kubectl logs my-pod -c my-container --previous      # despejar logs de um contêiner específico em um pod (stdout, no caso de vários contêineres) para uma instanciação anterior de um contêiner
kubectl logs -f my-pod                              # Fluxo de logs de pod (stdout)
kubectl logs -f my-pod -c my-container              # Fluxo de logs para um específico contêiner em um pod (stdout, caixa com vários contêineres)
kubectl logs -f -l name=myLabel --all-containers    # transmitir todos os logs de pods com a label name=myLabel (stdout)
kubectl run -i --tty busybox --image=busybox -- sh  # Executar pod como shell interativo
kubectl run nginx --image=nginx --restart=Never -n 
mynamespace                                         # Execute o pod nginx em um namespace específico
kubectl run nginx --image=nginx --restart=Never     # Execute o pod nginx e salve suas especificações em um arquivo chamado pod.yaml
--dry-run -o yaml > pod.yaml

kubectl attach my-pod -i                            # Anexar ao contêiner em execução
kubectl port-forward my-pod 5000:6000               # Ouça na porta 5000 na máquina local e encaminhe para a porta 6000 no my-pod
kubectl exec my-pod -- ls /                         # Executar comando no pod existente (1 contêiner)
kubectl exec my-pod -c my-container -- ls /         # Executar comando no pod existente (pod com vários contêineres)
kubectl top pod POD_NAME --containers               # Mostrar métricas para um determinado pod e seus contêineres