# Comandos do Docker

- criando uma imagem através do dockerfile:
  - `docker buit -t <nome-da-imagem> .`
  - `docker build  -t <nome-da-imagem> . --no-cache`

- removendo imagens não utilizadas:
  - `docker images prune`

- criando um tag para a imagem:
  - `docker tag ubuntu-curl <usuario>/<nome-do-container>:<versão>`
  - `docker tag romulo27/kube-news:v1 romulo27/kube-news:latest`

- publicando uma imagem no register:
  - `docker push romulo27/ubuntu-curl:v1`

# Comandos do Kubernetes

- criando um cluster:
  - `k3d cluster create`

- criando sem o load balancer:
  - `k3d cluster create --no-lb`

- criando com agents(worker nodes) e servers(control-plane)
  - `k3d cluster create --servers 3 --agents 3`
  - com bind port:
  - ` k3d cluster create myclustes --servers 3 agents 3 -p "30000:30000@loadbalancer"`

- listando os cluster:
  - `k3d cluster list`

- deletando o cluser:
  - `k3d cluster delete`

- lista de criação do kubectl:
  - `kubectl api-resources`

- aplicando o pod:
  - `kubectl apply -f pod.yaml`

- deletendo o pod:
  - `kubectl delete meupod`
  - detela todos os pods do manifesto:
  - `kubectl delete -f .\pod.yaml`

- listando os pods:
  - `kubectl get pods`
  - detalhe do pod
  - `kubectl get pods -o wide`
  - descrição do pod
  - `kubectl describe pod meupod`

- port binding:
  - `kubectl port-forward pod/meupod 8080:80`

 - listando o pod especifico:
  - `kubectl get pods -l app=green`

- criando o relicaset:
  - `kubectl apply -f .\replicaset.yaml`

- lista os replicasets:
  - `kubectl get replicaset`

- criando o deploy:
  - `kubectl apply -f .\deployment.yaml`
  - 
- lista o deploy:
  - `kubectl get deploy`

- lista as versões do deploy:
  - `kubectl rollout history deployment meudeployment`

- lista os services:
  - `kubectl get services`