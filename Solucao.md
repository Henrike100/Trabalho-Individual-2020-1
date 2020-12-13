# Trabalho Individual GCES - Solução

[![Build Status](https://travis-ci.com/Henrike100/Trabalho-Individual-2020-1.svg?branch=master)](https://travis-ci.com/Henrike100/Trabalho-Individual-2020-1) [![Maintainability](https://api.codeclimate.com/v1/badges/2fe8ee01042feb49c017/maintainability)](https://codeclimate.com/github/Henrike100/Trabalho-Individual-2020-1/maintainability)

| Aluno | Matrícula |
|-|-|
| Henrique Martins | 17/0050394 |

## Containerização

Para este projeto, foram utilizados 3 containers:
- 1 para o `client` ([Dockerfile](https://github.com/Henrike100/Trabalho-Individual-2020-1/blob/master/client/Dockerfile))
- 1 para a `api` ([Dockerfile](https://github.com/Henrike100/Trabalho-Individual-2020-1/blob/master/api/Dockerfile))
- 1 para o `banco de dados` (feito no `docker-compose.yml`)

Também foi utilizado o [docker-compose.yml](https://github.com/Henrike100/Trabalho-Individual-2020-1/blob/master/docker-compose.yml), que serve como orquestrador para gerenciar a comunicação entre os containers.

### Como rodar o projeto

Para rodar o projeto, use o seguinte comando:
```
docker-compose up
```

### Como testar o projeto

Para testar o client, use o seguinte comando:
```
docker-compose run --rm client yarn run test:unit
```

Para testar a api, use o seguinte comando:
```
docker-compose run --rm api bundle exec rails test
```

## Integração contínua

A integração contínua foi feita utlizando o <b>Travis CI</b>. Suas configurações estão no arquivo [.travis.yml](https://github.com/Henrike100/Trabalho-Individual-2020-1/blob/master/.travis.yml). Eis os passos que ocorrem a cada commit:
1. É feita a build do projeto.
2. Os testes são realizados (um para o client e outro para a api)
3. É feito o deploy do client
4. É feito o deploy da api

Para a coleta de métricas, foi utilizado o <b>Code Climate</b>.

## Deploy contínuo

O deploy foi feito no <b>Heroku</b>. Após a etapa de `build` e `teste` ter terminado com sucesso, o Travis CI faz deploy automático da aplicação.
