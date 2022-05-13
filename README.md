<div align='center'>

# [Invoices Views API](https://invoices-viewer-api.herokuapp.com/orders)

</div>

Back End da aplicação [Invoices Viewer](https://github.com/dcmatheus/invoices-viewer).

---

## Iniciando a aplicação

- #### Clone o repositório:
    ```bash
    git clone git@github.com:dcmatheus/invoices-viewer-api.git
    ```

- #### Instale as dependências:
    ```bash
    npm install
    ```

- #### Inicie a aplicação:
    ```bash
    npm run dev
    ```

>*A aplicação ficara disponível em http://localhost:3001*
---

## Variáveis ​​de Ambiente

Para que a aplicação funcione é necessário que exista um `.env` na raiz do projeto com a chave `DATABASE_URL`recebendo como parâmetro a URL do seu banco MySQL.

Exemplo:
```env
DATABASE_URL='mysql://USER:PASSWORD@HOST:PORT/DATABASE'
```

>Referência: https://www.prisma.io/docs/concepts/database-connectors/mysql

---

## Tecnologias utilizadas

- #### Express: Framework utilizado para criar a API seguindo o padrão REST.
- #### Prisma: ORM para a manipulação do banco de dados.
- #### Eslint: Ferramenta que mantém o código seguindo os principais padrões da comunidade.

---

## Estrutura de pastas

Estrutura de pastas baseado no modelo MSC(Model, Service, Controller).
```js
src
├── controller
├── model
├── routes
├── services
└── utils
```

---


## Deploy

O deploy foi feito utilizando o Heroku.

Link do Deploy: https://invoices-viewer-api.herokuapp.com/orders
