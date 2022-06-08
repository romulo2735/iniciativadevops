# Comandos do Docker

- criando uma imagem através do dockerfile:
  - `docker buit -t <nome-da-imagem> .`
  - `docker build  -t <nome-da-imagem> . --no-cache`

- removendo imagens não utilizadas:
  - `docker images prune`

- criando um tag para a imagem:
  - `docker tag ubuntu-curl <usuario>/<nome-do-container>:<versão>`

- publicando uma imagem no register:
  - `docker push romulo27/ubuntu-curl:v1`