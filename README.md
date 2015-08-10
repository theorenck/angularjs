# Sinatra + AngularJS Example App

Este projeto adotou, por simplicidade e convniência, a seguinte estrutura:
```
.
├── server.rb
├── Gemfile
├── Gemfile.lock
├── config.ru
├── README.md
├── .gitignore
└── public
    ├── index.html
    ├── css
    |   └── styles.js
    └── js
        └── scripts.js

```
- `server.rb`, arquivo principal da aplicação, usa sinatra para implementar servir a API e arquivos estáticos;
- `Gemfile`, onde as dependências da aplicação são declaradas;
- `Gemfile.lock`, descreve a árvore de dependencias da aplicação;
- `config.ru`, arquivo de configuração do Rack::Middleware, usado implicitamente pelo comando `rackup`;
- `.gitignore`, lista de arquivos que devem ser ignorados pelo GIT durante o processo de versionamento;
- `index.html`, principal template HTML e ponto de entrada da aplicação.
- `styles.css`, folha de estilos da aplicação.
- `scripts.js`, arquivo que contém os scripts utilizados na aplicação.
