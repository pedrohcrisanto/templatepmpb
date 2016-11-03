## Core Backend - PMPB

Requisi­tos mínimos para rodar a aplicação:

* Ruby 2.2.3 ou Superior

* PostgreSQL

* Rails 5

## Configuração

Clone o projeto

```sh
$ git clone git@bitbucket.org:brunojppb/pmpb-core.git
```

Instale as dependências
```sh
$ cd /pmpb-core/
$ bundle install
```

```sh
$ abra o projeto no editor de código
$ crie um arquivo database.yml no diretório config baseado no modelo database.example.yml
$ informe host user e password conforme os dados do seu SGBD
```

Crie o banco e as tabelas
```sh
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rake db:seed:ranks
$ bundle exec rake db:seed:units
$ bundle exec rake db:seed:admins

```

Rode a aplicação
```sh
$ rails s
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000`
