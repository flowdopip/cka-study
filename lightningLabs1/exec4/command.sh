kubectl rollout status deployment/nginx-deploy

kubectl set image deployment/nginx-deploy nginx=nginx:1.17 --record

kubectl set image deployment.v1.apps/nginx-deploy nginx=nginx:1.16 --record=true
