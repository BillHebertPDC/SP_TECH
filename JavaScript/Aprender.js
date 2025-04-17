/*
DESENVOLVIDO POR: BILL HEBERT
VERSÂO: 0.0.2
DEPENDENCIAS EXTENSÂO VSCODE: Comment Anchors, Better Comments
CONFIG EXTENSÃO:
    "commentAnchors.tags.anchors": {
    
        "MM": {
            "iconColor": "default",
            "highlightColor": "#A8C023",
            "scope": "file"
        },
        "NN": {
            "iconColor": "blue",
            "highlightColor": "#000000",
            "scope": "workspace"
        },
        "FIXME": {
            "iconColor": "red",
            "highlightColor": "#F44336",
            "scope": "workspace"
        },
        "STUB": {
            "iconColor": "purple",
            "highlightColor": "#BA68C8",
            "scope": "file"
        },
        "NOTE": {
            "iconColor": "orange",
            "highlightColor": "#FFB300",
            "scope": "file"
        },
        "REVIEW": {
            "iconColor": "green",
            "highlightColor": "#64DD17",
            "scope": "workspace"
        },
        "S": {
            "iconColor": "blurple",
            "highlightColor": "#896afc",
            "scope": "workspace",
            "behavior": "region"
        },
        "LINK": {
            "iconColor": "#2ecc71",
            "highlightColor": "#2ecc71",
            "scope": "workspace",
            "behavior": "link"
        }
    },
    "better-comments.tags": [
        {
            "tag": "<>",
            "color": "#FF2D00",
            "strikethrough": false,
            "underline": false,
            "backgroundColor": "transparent",
            "bold": false,
            "italic": false
        },
        {
            "tag": "?",
            "color": "#3498DB",
            "strikethrough": false,
            "underline": false,
            "backgroundColor": "transparent",
            "bold": false,
            "italic": false
        },
        {
            "tag": "NN",
            "color": "#000000",
            "strikethrough": true,
            "underline": false,
            "backgroundColor": "transparent",
            "bold": false,
            "italic": false
        },
        {
            "tag": "todo",
            "color": "#FF8C00",
            "strikethrough": false,
            "underline": false,
            "backgroundColor": "transparent",
            "bold": false,
            "italic": false
        },
        {
            "tag": "*",
            "color": "#98C379",
            "strikethrough": false,
            "underline": false,
            "backgroundColor": "transparent",
            "bold": false,
            "italic": false
        },
        {
            "tag": "TT",
            "color": "#00ffee",
            "strikethrough": false,
            "underline": true,
            "backgroundColor": "#001e1f",
            "bold": true,
            "italic": false
        },
        {
            "tag": "II",
            "color": "#9d9d9e",
            "strikethrough": false,
            "underline": true,
            "backgroundColor": "#00031f",
            "bold": true,
            "italic": false
        }
    ],

    */

`
${{}// nn //S[epic=JAVASCRIP] SUMARIO
    }
|=======================================================================================================================================================================|
|                                                                     SUMARIO                                                                                           |
|=======================================================================================================================================================================|
|//MM                                                           JAVASCRIPT INICIANTE                                                                                    |
|=======================================================================================================================================================================|
|Projetos para o Nível Básico                                                                                                                                           |
|                                                                                                                                                                       |
|Calculadora Simples                                                                                                                                                    |
|Objetivo: Criar uma calculadora simples com funções básicas (adição, subtração, multiplicação e divisão) usando HTML, CSS e JavaScript.                                |
|O que você aprenderá: Manipulação de DOM, eventos, operadores, controle de fluxo.                                                                                      |
|                                                                                                                                                                       |
|Lista de Tarefas (To-Do List)                                                                                                                                          |
|Objetivo: Criar um aplicativo de lista de tarefas onde o usuário pode adicionar, remover e marcar tarefas como concluídas.                                             |
|O que você aprenderá: Manipulação de DOM, arrays, eventos, armazenamento local (localStorage).                                                                         |
|                                                                                                                                                                       |
|Jogo da Memória                                                                                                                                                        |
|Objetivo: Criar um jogo simples de memória onde o jogador precisa combinar pares de cartas.                                                                            |
|O que você aprenderá: Manipulação de arrays, loops, lógica de controle, eventos.                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   1 Fundamentos da Linguagem                                                  |   2 Tipos de Dados e Variáveis                                                        |
|       1.1 Introdução ao JavaScript                                            |       2.1 var, let e const                                                            |
|       1.2 Como incluir JavaScript em HTML (script interno e externo)          |       2.2 Tipos primitivos (String, Number, Boolean, Null, Undefined, Symbol, BigInt) |
|       1.3 Console do navegador (console.log, console.error, etc.)             |       2.3 Conversão de tipos (String(), Number(), parseInt(), parseFloat())           |
|       1.4 Comentários em JavaScript (// e /* * /)                             |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   3 Operadores                                                                |   4 Estruturas de Controle                                                            |
|       3.1 Operadores aritméticos (+, -, *, /, %, **)                          |       4.1 Condicionais (if, else if, else, switch)                                    |
|       3.2 Operadores de atribuição (=, +=, -=, *=, /=, %=, **=)               |       4.2 Estruturas de repetição (for, while, do while)                              |
|       3.3 Operadores de comparação (==, ===, !=, !==, >, <, >=, <=)           |       4.3 Break e continue                                                            |
|       3.4 Operadores lógicos (&&, ||, !)                                      |                                                                                       |
|       3.5 Operador ternário (condição ? valor1 : valor2)                      |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   5 Funções                                                                   |   6 Manipulação de Strings                                                            |
|       5.1 Declaração de funções (function nomeDaFuncao() {})                  |       6.1 Propriedades e métodos de string (.length, .toUpperCase(), .toLowerCase(),  |
|       5.2 Funções com parâmetros e retorno (return)                           |           .trim(), .replace(), .split(), .substring(), .indexOf())                    |
|       5.3 Funções anônimas e funções armazenadas em variáveis                 |                                                                                       |
|       5.4 Arrow functions (() => {})                                          |                                                                                       |
|                                                                               |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   7 Manipulação de Números                                                    |   8 Arrays (Listas)                                                                   |
|       7.1 Métodos de Number (toFixed(), toPrecision(), Math.random(),         |       8.1 Declaração e manipulação de arrays                                          |
|           Math.floor(), Math.ceil(), Math.round(), Math.max(), Math.min())    |       8.2 Métodos principais (push(), pop(), shift(), unshift(), length, indexOf(),   |
|                                                                               |           slice(), splice(), concat(), join(), reverse(), sort(), forEach(), map(),   |
|                                                                               |           filter(), reduce())                                                         |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   9 Objetos                                                                   |   10 Manipulação do DOM (Document Object Model)                                       |
|       9.1 Criando objetos ({ chave: valor })                                  |       10.1 Selecionar elementos (getElementById, getElementsByClassName,              |
|       9.2 Acessando propriedades (obj.propriedade, obj["propriedade"])        |           querySelector, querySelectorAll)                                            |
|       9.3 Adicionando e removendo propriedades                                |       10.2 Modificar conteúdo (innerHTML, textContent, value)                         |
|       9.4 Métodos em objetos (funções dentro de objetos)                      |       10.3 Modificar estilos (style.property)                                         |
|                                                                               |       10.4 Adicionar e remover classes (classList.add(), classList.remove(),          |
|                                                                               |           classList.toggle())                                                         |
|                                                                               |       10.5 Criar e remover elementos (createElement(), appendChild(), removeChild())  |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   11 Eventos                                                                  |   12 Introdução ao Debugging e Tratamento de Erros                                    |
|       11.1 Manipulação de eventos (onclick, onmouseover, onmouseout,          |       12.1 try...catch                                                                |
|           onkeyup, onkeydown)                                                 |       12.2 throw                                                                      |
|       11.2 addEventListener e removeEventListener                             |       12.3 console.log() para depuração                                               |
|       11.3 Evento de carregamento (DOMContentLoaded)                          |       12.4 Ferramentas do desenvolvedor do navegador                                  |
|       11.4 Prevenção de eventos padrão (event.preventDefault())               |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   13 JSON (JavaScript Object Notation)                                        |   14 Introdução ao BOM (Browser Object Model)                                         |
|       13.1 O que é JSON?                                                      |       14.1 window (alert(), prompt(), confirm())                                      |
|       13.2 Convertendo entre JSON e objetos JavaScript (JSON.stringify(),     |       14.2 setTimeout() e setInterval()                                               |
|           JSON.parse())                                                       |       14.3 navigator (informações do navegador)                                       |
|                                                                               |       14.4 location (redirecionamento de páginas)                                     |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   15 Introdução ao Storage no Navegador                                       |                                                                                       |
|       15.1 LocalStorage e SessionStorage (setItem(), getItem(),               |                                                                                       |
|           removeItem(), clear())                                              |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|=======================================================================================================================================================================|
|                                                                     FIM DO NÍVEL INICIANTE                                                                            |
|=======================================================================================================================================================================|
|//MM                                                                JAVASCRIPT INTERMEDIÁRIO                                                                           |
|=======================================================================================================================================================================|
|Projetos para o Nível Intermediário                                                                                                                                    |
|                                                                                                                                                                       |
|Galeria de Imagens Dinâmica                                                                                                                                            |
|Objetivo: Criar uma galeria de imagens que carrega dinamicamente imagens de uma API pública (por exemplo, Unsplash ou Pexels).                                         |
|O que você aprenderá: Consumo de APIs com Fetch, manipulação de DOM, gerenciamento de estado.                                                                          |
|                                                                                                                                                                       |
|Aplicativo de Clima                                                                                                                                                    |
|Objetivo: Criar um aplicativo que exibe o clima em tempo real para qualquer cidade, utilizando a API de clima (como OpenWeatherMap).                                   |
|O que você aprenderá: Trabalhar com APIs externas, manipulação de JSON, design responsivo, controle de erros.                                                          |
|                                                                                                                                                                       |
|Conversor de Moeda                                                                                                                                                     |
|Objetivo: Criar um conversor de moedas que usa uma API para taxas de câmbio em tempo real.                                                                             |
|O que você aprenderá: Trabalhar com APIs externas, cálculo com números, manipulação de valores, validação de dados.                                                    |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   1 Manipulação Avançada do DOM                                               |   2 Funções Avançadas                                                                 |
|       1.1 Navegação entre elementos (parentNode, childNodes, firstChild,      |       2.2 Funções como expressões (const func = function() {})                        |
|           lastChild, nextSibling, previousSibling)                            |       2.3 Closures (funções dentro de funções que lembram variáveis externas)         |
|       1.2 Criar e inserir elementos dinamicamente (document.createElement,    |       2.4 Funções de alta ordem (funções que recebem ou retornam outras funções)      |
|           appendChild, insertBefore)                                          |       2.5 Contexto do "this" (uso em diferentes contextos)                            |
|       1.3 Remover elementos dinamicamente (removeChild)                       |       2.6 bind(), call() e apply()                                                    |
|       1.4 Clonar elementos (cloneNode)                                        |       2.7 Recursividade (função chamando a si mesma)                                  |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   3 Trabalhando com Arrays e Objetos de Forma Avançada                        |   4 Programação Orientada a Objetos (POO) em JavaScript                               |
|       3.2 Destructuring (extração de valores de arrays e objetos)             |       4.1 Introdução à POO no JavaScript                                              |
|       3.3 Rest e Spread Operator (...)                                        |       4.2 Prototype e herança baseada em protótipos                                   |
|       3.4 Métodos avançados de array (find(), findIndex(), some(),            |       4.3 Classes e herança com "class" e "extends"                                   |
|           every(), includes(), flat(), flatMap())                             |       4.4 Métodos e propriedades estáticas                                            |
|                                                                               |       4.5 Encapsulamento (private e public)                                           |
|                                                                               |       4.6 Getters e Setters                                                           |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   5 Manipulação de Eventos Avançada                                           |   6 Promises e Assincronismo                                                          |
|       5.1 Delegação de eventos (event delegation)                             |       6.1 Introdução ao conceito de assincronismo                                     |
|       5.2 Propagação de eventos (bubbling e capturing)                        |       6.2 Uso de setTimeout e setInterval                                             |
|       5.3 Eventos dinâmicos (adicionando eventos em elementos criados         |       6.3 Introdução às Promises (then, catch, finally)                               |
|           dinamicamente)                         |                            |       6.4 Encadeamento de Promises                                                    |
|       5.4 Custom Events (dispatchEvent, CustomEvent)                          |       6.5 Async/Await                                                                 |
|                                                                               |       6.6 Tratamento de erros em Promises e Async/Await                               |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   7 Trabalhando com APIs (AJAX, Fetch e APIs Externas)                        |   8 Módulos em JavaScript (ES6+)                                                      |
|       7.1 Introdução ao AJAX e Fetch API                                      |       8.1 Import e Export (default e named exports)                                   |
|       7.2 Fazendo requisições GET e POST com Fetch                            |       8.2 Trabalhando com módulos nativos no navegador                                |
|       7.3 Manipulando respostas (JSON, texto, blob)                           |       8.3 Uso de módulos no Node.js (CommonJS e ES Modules)                           | 
|       7.4 Requisições assíncronas com Async/Await                             |                                                                                       |
|       7.5 Introdução ao uso de bibliotecas para requisições (Axios)           |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   9 Expressões Regulares (Regex) em JavaScript                                |   10 Web Storage Avançado                                                             |
|       9.1 O que são expressões regulares?                                     |       10.1 Uso avançado de LocalStorage e SessionStorage                              |
|       9.2 Métodos principais (test(), match(), replace(), exec())             |       10.2 IndexedDB para armazenamento de dados estruturados                         |
|       9.3 Sintaxe básica de regex (/pattern/modifiers)                        |       10.3 Cookies (criação, leitura e remoção)                                       |
|       9.4 Grupos e quantificadores                                            |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   11 Manipulação de Data e Hora                                               |   12 Trabalhando com Eventos e Animações no CSS                                       |
|       11.1 Objeto Date                                                        |       12.1 Manipulando estilos dinamicamente (element.style)                          |
|       11.2 Métodos úteis (getDate(), getMonth(), getFullYear(), getHours(),   |       12.2 Adicionando e removendo classes CSS                                        |
|           getMinutes(), getSeconds())                                         |       12.3 Trabalhando com animações CSS e JavaScript (setTimeout(),                  |
|       11.3 Formatação de datas                                                |           setInterval(), requestAnimationFrame())                                     |
|       11.4 Biblioteca Moment.js (alternativa mais avançada)                   |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   13 WebSockets e Comunicação em Tempo Real (Introdução)                      |   14 Tratamento de Erros Avançado                                                     |
|       13.1 O que são WebSockets?                                              |       14.1 try, catch, finally                                                        |
|       13.2 Criando conexões WebSocket                                         |       14.2 Criando erros personalizados com throw new Error()                         |
|       13.3 Envio e recebimento de mensagens                                   |       14.3 Tratamento de erros em Promises e Async/Await                              |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   15 Introdução a Frameworks e Bibliotecas Populares                          |                                                                                       |
|       15.1 Introdução ao React, Vue.js e Angular (conceitos básicos)          |                                                                                       |
|       15.2 Uso básico do Node.js para JavaScript no backend                   |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|=======================================================================================================================================================================|
|                                                                     FIM DO NÍVEL INTERMEDIARIO                                                                        |
|=======================================================================================================================================================================|
|//MM                                                                   JAVASCRIPT AVANÇADO                                                                             |
|=======================================================================================================================================================================|
|Projetos para o Nível Avançado                                                                                                                                         |
|                                                                                                                                                                       |
|Aplicação de Chat em Tempo Real                                                                                                                                        |
|Objetivo: Criar um chat em tempo real utilizando WebSockets (ou Socket.io no Node.js) para comunicação entre os usuários.                                              |
|O que você aprenderá: Comunicação em tempo real com WebSockets, gerenciamento de conexões, manipulação de eventos.                                                     |
|                                                                                                                                                                       |
|Sistema de Autenticação com JWT (JSON Web Token)                                                                                                                       |
|Objetivo: Criar um sistema de login e registro utilizando Node.js, Express, e JWT para autenticação segura de usuários.                                                |
|O que você aprenderá: Autenticação de usuários, JWT, segurança, middleware em Node.js.                                                                                 |
|                                                                                                                                                                       |
|Aplicação de E-commerce com Backend (REST API + Frontend)                                                                                                              |
|Objetivo: Criar uma aplicação de e-commerce simples com backend (usando Node.js e Express) e frontend (React, Vue ou qualquer framework frontend).                     |
|O que você aprenderá: Construção de uma API RESTful, gerenciamento de estado, integração entre frontend e backend, manipulação de banco de dados.                      |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   1 Padrões de Projeto (Design Patterns)                                      |   2 Performance e Otimização de Código                                                |
|       1.1 Singleton                                                           |       2.1 Técnicas de otimização de loops e funções                                   |
|       1.2 Factory                                                             |       2.2 Debounce e Throttle (otimização de eventos)                                 |
|       1.3 Observer                                                            |       2.3 Lazy Loading (carregamento sob demanda)                                     |
|       1.4 Module Pattern                                                      |       2.4 Virtual DOM (conceito por trás do React)                                    |
|       1.5 Revealing Module Pattern                                            |       2.5 Minificação e uglification de código                                        |
|       1.6 Mediator                                                            |       2.6 Tree shaking e dead code elimination                                        |
|       1.7 Strategy                                                            |                                                                                       |
|       1.8 Proxy e Decorator                                                   |                                                                                       |
|       1.9 Facade                                                              |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   3 Programação Funcional no JavaScript                                       |   4 Gerenciamento de Estado em Aplicações                                             |
|       3.1 Conceitos básicos (imutabilidade, pure functions, higher-order      |       4.1 Introdução ao gerenciamento de estado                                       |
|           functions)                                                          |       4.1 Redux (conceitos, actions, reducers, store)                                 |
|       3.2 Funções de ordem superior (map, filter, reduce)                     |       4.1 Context API no React                                                        |
|       3.3 Currying e composição de funções                                    |       4.1 MobX, Zustand e outras alternativas                                         |
|       3.4 Aplicação parcial                                                   |                                                                                       |
|       3.5 Programação reativa (RxJS)                                          |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   5 Arquitetura de Aplicações JavaScript                                      |   6 WebSockets e Comunicação em Tempo Real (Avançado)                                 |
|       5.1 Arquitetura MVC (Model-View-Controller)                             |       6.1 Implementação de WebSockets no backend (Node.js + Socket.io)                |
|       5.2 Arquitetura MVVM (Model-View-ViewModel)                             |       6.1 WebRTC para chamadas de vídeo e áudio                                       |
|       5.3 Arquitetura baseada em componentes (React, Vue.js)                  |       6.1 Server-Sent Events (SSE)                                                    |
|       5.4 Microfrontends (arquitetura para aplicações escaláveis)             |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   7 Segurança em JavaScript                                                   |   8 Testes Automatizados                                                              |
|       7.1 Prevenção contra XSS (Cross-Site Scripting)                         |       8.1 Testes unitários (Jest, Mocha, Chai)                                        |
|       7.2 Prevenção contra CSRF (Cross-Site Request Forgery)                  |       8.2 Testes de integração                                                        |
|       7.3 SQL Injection e ataques comuns                                      |       8.3 Testes end-to-end (Cypress, Selenium)                                       |
|       7.4 Same-Origin Policy e CORS                                           |       8.4 Mocks e spies                                                               |
|       7.5 Hashing e criptografia (bcrypt, crypto module)                      |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   9 Service Workers e Aplicações PWA (Progressive Web Apps)                   |   10 Server-Side Rendering (SSR) e Static Site Generation (SSG)                       |
|       9.1 O que são Service Workers?                                          |       10.1 Diferença entre SSR, SSG e CSR (Client-Side Rendering)                     |
|       9.2 Cache API e armazenamento offline                                   |       10.1 Next.js (React SSR/SSG)                                                    |
|       9.3 Push Notifications                                                  |       10.1 Nuxt.js (Vue SSR/SSG)                                                      |
|       9.4 Manifest e instalação de PWAs                                       |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   11 Node.js e Desenvolvimento Backend                                        |   12 WebAssembly e Integração com JavaScript                                          |
|       11.1 Fundamentos do Node.js (event loop, non-blocking I/O)              |       12.1 Introdução ao WebAssembly (WASM)                                           |
|       11.2 Express.js (criação de APIs RESTful)                               |       12.2 Como usar WebAssembly no JavaScript                                        |
|       11.3 Manipulação de arquivos e Streams                                  |       12.3 Casos de uso para WebAssembly                                              |
|       11.4 Banco de dados com Node.js (MongoDB, PostgreSQL, MySQL)            |                                                                                       |
|       11.5 Autenticação com JWT (JSON Web Tokens)                             |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   13 Integração com APIs Externas e GraphQL                                   |   14 Multithreading no JavaScript (Web Workers)                                       |
|       13.1 RESTful APIs vs. GraphQL                                           |       14.1 Introdução aos Web Workers                                                 |
|       13.2 Consumo de APIs GraphQL no frontend                                |       14.1 Uso de Worker Threads no Node.js                                           |
|       13.3 Apollo Client para GraphQL                                         |       14.1 SharedArrayBuffer e Atomics para manipulação de dados em paralelo          |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   15 Construção e Deploy de Aplicações JavaScript                             |                                                                                       |
|       15.1 Configuração de bundlers (Webpack, Parcel, Vite, Rollup)           |                                                                                       |
|       15.2 CI/CD para JavaScript (GitHub Actions, Travis CI, Jenkins)         |                                                                                       |
|       15.3 Deploy em servidores (Vercel, Netlify, Heroku, AWS)                |                                                                                       |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|=======================================================================================================================================================================|
|                                                                       FIM DO NÍVEL AVANÇADO                                                                           |
|=======================================================================================================================================================================|
//!S
`

/*
nn //S INICIANTE
|=======================================================================================================================================================================|
//MM                                                               Fundamentos da Linguagem
|=======================================================================================================================================================================|
/*
nn //S 1 Fundamentos da Linguagem
NN //S 1.1 Introdução ao Javascript
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                            1.1 Introdução ao JavaScript
|=======================================================================================================================================================================|
|//MM INTRODUÇÂO
|JavaScript é uma linguagem de programação que foi criada originalmente para ser executada  em navegadores web, com o objetivo de tornar as páginas mais dinâmicas e    |
|interativas. Seu principal uso é no desenvolvimento de sites e aplicativos web, onde ela pode manipular conteúdo HTML e CSS, controlar o comportamento de elementos na |
|página, realizar validações de formulários, criar animações, interagir com servidores (por exemplo, fazendo requisições HTTP), e muito mais.                           |
|Foi criado em 1995 por Brendan Eich, um engenheiro da Netscape Communications, com o nome inicial de "Mocha", depois "LiveScript", e finalmente "JavaScript".          |
|A principal motivação para sua criação foi fornecer aos desenvolvedores web uma maneira de adicionar interatividade ao HTML estático, que até então só podia exibir    |
|conteúdo fixo. Antes de JavaScript, a web era principalmente composta por páginas que não reagiam a interações do usuário, como cliques ou preenchimento de formulários|
|JavaScript foi projetado para ser uma linguagem leve e fácil de aprender, com sintaxe semelhante a outras linguagens populares da época, como Java e C. Ele permite a  |
|execução de código diretamente no navegador do usuário, o que o torna extremamente rápido e eficiente para a criação de sites responsivos e aplicações ricas. Ao longo |
|do tempo,JavaScript evoluiu para ser utilizado não apenas no lado do cliente (front-end), mas também no servidor (back-end), com o advento de ambientes de execução    |
|como o Node.js. Hoje em dia, JavaScript é uma das linguagens mais populares do mundo, sendo uma peça fundamental no ecossistema de desenvolvimento web moderno, usado  |
|tanto no front-end quanto no back-end de inúmeras aplicações.                                                                                                          |
NN //!S
NN //S 1.2 Incluir JavaScript em HTML
*/

/*
|=======================================================================================================================================================================|
todo                                                                  JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                        1.2 Como incluir JavaScript em HTML (script interno e externo)
|=======================================================================================================================================================================|
? //MM Script Interno (Inline)
* O código JavaScript pode ser escrito diretamente dentro da própria página HTML, dentro da tag <script>.
II=======================================================================================================================================================================
II                                                                          EXEMPLO                                                                                      
II=======================================================================================================================================================================
<script></script>
II=======================================================================================================================================================================
II                                                                        FIM EXEMPLO                                                                                    
II=======================================================================================================================================================================
<> Dica: É melhor colocar scripts internos no final do <body> para garantir que o HTML já tenha sido carregado antes do JavaScript ser executado.
? //MM Script Externo
* O código JavaScript pode ser armazenado em um arquivo separado (.js) e referenciado dentro do HTML usando a tag <script> com o atributo src.
II=======================================================================================================================================================================
II                                                                          EXEMPLO                                                                                      
II=======================================================================================================================================================================
<script src="script.js" defer></script>
II=======================================================================================================================================================================
II                                                                        FIM EXEMPLO                                                                                    
II=======================================================================================================================================================================
<> Dicas :
<> 1 O uso de defer na tag <script> faz com que o script seja carregado apenas depois que a página inteira for carregada.
<> 2 Para carregar o script no final da página sem defer, basta colocá-lo antes do fechamento da tag </body>.
<> 3 Separar o JavaScript em um arquivo externo ajuda a manter o código mais organizado e reutilizável.
NN //!S
*/

/*
nn ///S 1.3 Console do navegador
|=======================================================================================================================================================================|
todo                                                                         JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                    1.3 Console do navegador (console.log, console.error, etc.)
|=======================================================================================================================================================================|
? //MM console.log() – Exibir mensagens no console
* Usado para exibir valores, mensagens e depuração geral.
? //MM console.error() – Exibir erros
* Mostra mensagens de erro em vermelho.
? //MM console.warn() – Exibir avisos
* Mensagens de aviso aparecem com um ícone de alerta amarelo.
? //MM console.info() – Exibir informações
* Funciona como console.log(), mas usado para mensagens informativas.
? //MM console.table() – Exibir dados em formato de tabela
* Útil para exibir arrays e objetos de forma estruturada.
? //MM console.group() e console.groupEnd() – Agrupar mensagens
* Agrupa mensagens dentro do console para facilitar a leitura.
? //MM console.time() e console.timeEnd() – Medir tempo de execução
* Usado para medir o tempo de execução de um trecho de código.
? //MM console.clear() – Limpar o console
* Limpa todas as mensagens no console.

? //MM 🛠️ Dicas Práticas
✔️ Use console.log() para testar valores e acompanhar a execução do código.
✔️ Utilize console.table() para visualizar objetos e arrays de maneira organizada.
✔️ Agrupe mensagens com console.group() para facilitar a depuração.
✔️ Evite deixar console.log() em produção, pois pode impactar o desempenho e segurança.
nn //!S
nn ///S 1.4 Comentários em JavaScript
*/

/*
|=======================================================================================================================================================================|
todo                                                                        JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                                    1.4 Comentários em JavaScript
|=======================================================================================================================================================================|
*Os comentários em JavaScript são usados para documentar o código, torná-lo mais legível e desativar trechos temporariamente. Existem dois tipos principais:
//MM comentários
*/
{
    `
    //
    /* */
    `
}
/*
nn //!S
nn //!S
*/


/*
nn //S 2 Tipos de Dados e Variáveis  
nn //S 2.1 var, let e const
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                               2.1  var, let e const
|=======================================================================================================================================================================|
Em JavaScript, var, let e const são palavras-chave usadas para declarar variáveis, mas possuem diferenças significativas em escopo, hoisting e mutabilidade.
? //MM var (Escopo de Função, Hoisting sem Inicialização, Mutável)
* Antes do ES6, var era a única forma de declarar variáveis.
*⚡ Características Técnicas:
✔ Escopo de Função: var é visível dentro da função onde foi declarada, mas não respeita escopo de bloco ({});
✔ Hoisting: Movida para o topo do escopo durante a fase de compilação, mas sem inicialização (undefined por padrão);
✔ Reatribuível e Redeclarável: Pode ser alterada e declarada múltiplas vezes no mesmo escopo.
? //MM let (Escopo de Bloco, Hoisting sem Inicialização, Mutável)
*Introduzido no ES6, let resolve muitos problemas do var, como escopo de bloco e redeclaração.
*⚡ Características Técnicas:
✔ Escopo de Bloco: A variável só existe dentro do bloco {} onde foi declarada;
✔ Hoisting Parcial: A variável é içada, mas não inicializada, causando um erro se acessada antes da declaração;
✔ Reatribuível, mas não Redeclarável: Pode ser alterada, mas não declarada novamente no mesmo escopo.
? //MM const (Escopo de Bloco, Hoisting sem Inicialização, Imutável)
* Usado para declarar constantes cujo valor não pode ser reatribuído.
*⚡ Características Técnicas:
✔ Escopo de Bloco: Igual ao let;
✔ Hoisting Parcial: Movida para o topo, mas sem inicialização;
✔ Não Reatribuível: Uma vez definida, o valor não pode ser alterado (mas objetos e arrays podem ter seus elementos modificados).

|===================|===================================|===========================================|===================================================================|
|Característica	    |var	                            |let	                                    |const
|Escopo	            |Função	                            |Bloco	                                    |Bloco
|Hoisting	        |Sim (inicializa como undefined)	|Sim (erro se acessar antes da declaração)	|Sim (erro se acessar antes da declaração)
|Reatribuível	    |Sim	                            |Sim	                                    |Não
|Redeclarável	    |Sim	                            |Não    	                                |Não
|===================|===================================|===========================================|===================================================================|
nn //!S
*/
/*
nn //S 2.2 Tipos primitivos (String, Number, Boolean, Null, Undefined, Symbol, BigInt)
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                        2.2 Tipos primitivos (String, Number, Boolean, Null, Undefined, Symbol, BigInt)
|=======================================================================================================================================================================|
* Os tipos primitivos em JavaScript são os tipos de dados fundamentais que não são objetos e são armazenados diretamente na stack (pilha de memória). Eles são imutáveis 
* e comparados por valor.
JavaScript possui sete tipos primitivos:

|Tipo       |	Exemplo                     |	Descrição
|String     |	"texto", 'abc', `template`  |	Representa uma sequência de caracteres.
|Number     |	42, 3.14, -1                |	Números inteiros e de ponto flutuante (IEEE 754).
|Boolean    |	true, false                 |	Representa verdadeiro ou falso.
|Null       |	null	                    |   Indica ausência intencional de valor.
|Undefined  |	undefined	                |   Variável declarada, mas sem valor atribuído.
|Symbol     |	Symbol('id')	            |   Gera identificadores únicos e imutáveis.
|BigInt     |	123n, BigInt(9999999999)	|   Suporta números inteiros muito grandes.

// MM String
? O tipo String representa sequências de caracteres, delimitadas por aspas simples ('), duplas (") ou crases (``).
// MM Number
? O tipo Number representa valores numéricos, incluindo inteiros e pontos flutuantes (IEEE 754).
// MM Boolean
? O tipo Boolean tem apenas dois valores: 
✔ true (verdadeiro)
❌ false (falso)
*Conversão Implícita (Coerção de Tipos)
*Em contextos lógicos (if, while, &&, ||), valores são convertidos para true ou false (truthy ou falsy).
// MM Null
? O null é um valor primitivo intencionalmente vazio, indicando que uma variável foi definida, mas não possui valor.
// MM Undefined
? O undefined significa que uma variável foi declarada, mas não tem valor atribuído.
Diferença entre null e undefined
|Comparação	        |Retorno                    |
|null == undefined	|true (igualdade frouxa)    |
|null === undefined	|false (comparação estrita) |
// MM Symbol
? O Symbol cria valores imutáveis e únicos, geralmente usados como chaves privadas para propriedades de objetos.
// MM BigInt
? O BigInt é um tipo de número para valores inteiros muito grandes, além do limite do Number.

|Tipo	        |Mutável?	    |Comparação     |	Armazenamento
|String	        | Não	        |Por valor	    |Stack
|Number	        | Não	        |Por valor	    |Stack
|Boolean	    | Não	        |Por valor	    |Stack
|Null	        | Não	        |Por valor	    |Stack
|Undefined	    | Não	        |Por valor	    |Stack
|Symbol	        | Não	        |Sempre único	|Heap
|BigInt	        | Não   	    |Por valor	    |Stack
*/

/*
nn //!S
nn //S 2.3 Conversão de tipos (String(), Number(), parseInt(), parseFloat())
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                        2.3 Conversão de tipos (String(), Number(), parseInt(), parseFloat())
|=======================================================================================================================================================================|
A conversão de tipos em JavaScript ocorre de duas maneiras:
Conversão Implícita (Type Coercion) → O próprio JavaScript converte os tipos automaticamente.
Conversão Explícita (Type Casting) → O programador converte manualmente os tipos usando funções específicas.
JavaScript converte automaticamente os tipos em algumas operações, o que pode causar resultados inesperados.
//MM Type Coercion
//MM Type Casting
JavaScript fornece várias funções para converter valores entre diferentes tipos.
|-------------------------------|-------------------------------------------------------|
*|Função                        |Conversão                                              |
|String(valor)	                |Converte para String                                   |
|Number(valor)	                |Converte para Number                                   |
|Boolean(valor)	                |Converte para Boolean                                  |
|parseInt(valor, base)	        |Converte para Number (inteiro)                         |
|parseFloat(valor)	            |Converte para Number (decimal)                         |
|toString(base)	                |Converte número para string com base numérica          |
|JSON.stringify(objeto)	        |Converte objeto para JSON                              |
|JSON.parse(string)     	    |Converte JSON para objeto                              |
|-------------------------------|-------------------------------------------------------|
nn //!S
nn //!S
*/
/*
nn //S 3 Operadores
nn //S 3.1 Operadores aritméticos (+, -, *, /, %, **)
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                        3.1 Operadores aritméticos (+, -, *, /, %, **)
|=======================================================================================================================================================================|
// MM Tabela de operadores aritméticos
* Utilizados para realizar operações matemáticas sobre valores numéricos.
|---------------------------|---------------------------|-------------------|-------------------|
|Operador	                |Descrição	                |Exemplo	        |Resultado          |
|+	                        |Adição	                    |5 + 3	            |8                  |
|-	                        |Subtração	                |5 - 3	            |2                  |
|*	                        |Multiplicação	            |5 * 3	            |15                 |
|/	                        |Divisão	                |10 / 2	            |5                  |
|%	                        |Módulo (resto da divisão)	|10 % 3	            |1                  |
|**	                        |Exponenciação	            |2 ** 3	            |8                  |
|---------------------------|---------------------------|-------------------|-------------------|


Observações:
    10 / 0 retorna Infinity.
    0  / 0 retorna NaN.
nn //!S
*/
/*
nn //S 3.2 Operadores de Atribuição
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                            3.2 Operadores de Atribuição
|=======================================================================================================================================================================|
// MM Tabela de Operadores de Atribuição
*Usados para armazenar valores em variáveis.
|---------------------------|-----------------------------------|-----------------------------------|
|Operador	                |Equivalente a	                    |Exemplo                            |
|=	                        |Atribuição simples	                |x = 5                              |
|+=	                        |Soma e atribuição	                |x += 3 (equivale a x = x + 3)      |
|-=	                        |Subtração e atribuição	            |x -= 2 (equivale a x = x - 2)      |
|*=	                        |Multiplicação e atribuição	        |x *= 4 (equivale a x = x * 4)      |
|/=	                        |Divisão e atribuição	            |x /= 2 (equivale a x = x / 2)      |
|%=	                        |Módulo e atribuição	            |x %= 3 (equivale a x = x % 3)      |
|**=	                    |Exponenciação e atribuição	        |x **= 2 (equivale a x = x ** 2)    |
|---------------------------|-----------------------------------|-----------------------------------|
nn //!S
*/
/*
nn //S 3.3 Operadores de Comparação
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                            3.3 Operadores de Comparação
|=======================================================================================================================================================================|
// MM Tabela de Operadores de Comparação
*Utilizados para comparar valores e retornar true ou false.
|---------------------------|-----------------------------------|-----------------------------------|-----------------------------------|
|Operador	                |Descrição	                        |Exemplo	                        |Retorno                            |
|==	                        |Igualdade (coerção de tipo)	    |"5" == 5	                        |true                               |
|===	                    |Igualdade estrita (sem coerção)	|"5" === 5	                        |false                              |
|!=	                        |Diferente (coerção de tipo)	    |"5" != 5	                        |false                              |
|!==	                    |Diferente estrito (sem coerção)	|"5" !== 5	                        |true                               |
|>	                        |Maior que	                        |10 > 5	                            |true                               |
|<	                        |Menor que	                        |10 < 5	                            |false                              |
|>=	                        |Maior ou igual	                    |5 >= 5	                            |true                               |
|<=	                        |Menor ou igual	                    |4 <= 5	                            |true                               |
|---------------------------|-----------------------------------|-----------------------------------|-----------------------------------|
nn //!S
*/
/*
nn //S 3.4 Operadores Lógicos
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                              3.4 Operadores Lógicos
|=======================================================================================================================================================================|
// MM Tabela de Operadores Lógicos
*Usados para combinar expressões booleanas.
|---------------------------|-----------------------------------|-----------------------------------|-----------------------------------|
|Operador	                |Descrição	                        |Exemplo	                        |Retorno                            |
|           &&	            |E lógico	                        |true && false	                    |false                              |
|           ||              |OU lógico		                    |true || false	                    |true                               |
|           !	            |NÃO lógico	                        |!true	                            |false                              |
|           ??	            |nullish  	                        |null ?? 2	                        |2                                  |
|---------------------------|-----------------------------------|-----------------------------------|-----------------------------------|
Curiosidades:
false && qualquer_coisa sempre será false.
true || qualquer_coisa sempre será true.
!!valor converte um valor para booleano.
nn //!S
*/
/*
nn //S 3.5 Operador Ternário (condição ? valor1 : valor2)
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                    3.5 Operador Ternário (condição ? valor1 : valor2)
|=======================================================================================================================================================================|
// MM Operador Ternário
*Permite expressões condicionais em uma única linha.
Sintaxe : let resultado = (condicao) ? valor1 : valor2;
nn //!S
nn //!S
*/
/*
nn //S 4 Estruturas de Controle
nn //S 4.1 Condicionais (if, else if, else, switch)
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                    4.1 Condicionais (if, else if, else, switch)
|=======================================================================================================================================================================|
// MM Estrutura if, else if e else e switch
A estrutura if avalia uma condição e executa o bloco de código correspondente.
O switch é utilizado para avaliar múltiplas condições com base em um valor fixo.

Regras:
✔️ case define uma condição a ser testada.
✔️ break impede que os próximos blocos sejam executados.
✔️ default (opcional) define um bloco a ser executado se nenhum case corresponder.

uso:
✅ if/else → Para condições encadeadas ou complexas.
✅ switch → Quando há múltiplas verificações baseadas em um valor fixo.
✅ Operador ternário (? :) → Para expressões curtas e simples.
✅ ??, ||, && → Para lógica condicional rápida ou fornecimento de valores padrão.
✅ return antecipado → Para lógica limpa e eficiente.
nn //!S
*/
/*
nn //S 4.2 Estruturas de Repetição (for, while, do while)
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                    4.2 Estruturas de Repetição (for, while, do while)
|=======================================================================================================================================================================|
//MM Estrutura for: Usado quando o número de iterações é conhecido.
✔️ i = 0 → inicialização
✔️ i < 5 → condição de continuação
✔️ i++ → incremento após cada iteração
//MM Estrutura while: Usado quando o número de iterações é desconhecido e depende de uma condição.
✔️ O loop continua enquanto a condição for true.
//MM Estrutura do while:Garante que o bloco seja executado pelo menos uma vez, mesmo que a condição seja false desde o início.
✔️ Executa o bloco primeiro, depois verifica a condição.


Dicas:
for	Quando o número de iterações é conhecido.
while	Quando a condição depende de eventos externos.
do...while	Quando deseja garantir que o bloco execute ao menos uma vez.
for...in	Para iterar propriedades de objetos.
for...of	Para iterar diretamente valores de arrays e iteráveis.
.forEach()	Para lógica funcional ou quando não precisa de break/continue.

nn //!S
*/
/*
nn //S 4.3 break e continue
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                                4.3 break e continue
|=======================================================================================================================================================================|
//MM break: Interrompe a execução do loop antes de completar todas as iterações.
//MM continue : Pula a iteração atual e continua para a próxima.

nn //!S
nn //!S
*/
/*
nn //S 5 Funções
nn //S 5.1 Declaração de Funções (function nomeDaFuncao() {})
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                  5.1 Declaração de Funções (function nomeDaFuncao() {})
|=======================================================================================================================================================================|
* As funções são blocos de código reutilizáveis que podem ser chamados em diferentes partes do programa. Elas ajudam a modularizar o código e evitar repetições.
//MM Uma função pode ser declarada usando a palavra-chave function
As funções declaradas dessa forma são "hoisted", ou seja, podem ser chamadas antes da sua definição.
nn //!S
*/
/*
nn //S 5.2 Funções com Parâmetros e Retorno (return)
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                  5.2 Funções com Parâmetros e Retorno (return)
|=======================================================================================================================================================================|
* Uma função pode receber parâmetros e retornar valores.
//MM ✔️ return finaliza a execução da função e retorna um valor.
//MM ✔️ Se return for omitido, a função retorna undefined.
nn //!S
*/
/*
nn //S 5.3 Funções Anônimas e Funções Armazenadas em Variáveis
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                  5.3 Funções Anônimas e Funções Armazenadas em Variáveis
|=======================================================================================================================================================================|
* Uma função anônima não possui nome e pode ser atribuída a uma variável.
//MM ✔️ As funções armazenadas em variáveis não são hoisted, ou seja, não podem ser chamadas antes da definição.
nn //!S
/*
nn //S 5.4 Arrow Functions (() => {})
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                            5.4 Arrow Functions (() => {})
|=======================================================================================================================================================================|
* As arrow functions são uma forma mais concisa de escrever funções.
//MM ✔️ Vantagens das Arrow Functions:
            Sintaxe mais curta.
            Não possuem this próprio (útil em contextos de objetos e classes).
//MM ✔️ Se houver {}, é necessário usar return explicitamente.
nn //!S
nn //!S
*/
/*
nn //S 6 Manipulação de Strings 
nn //S 6.1 Propriedades e métodos de string
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                        6.1 Propriedades e métodos de string
|=======================================================================================================================================================================|
* Strings em JavaScript são sequências imutáveis de caracteres Unicode. Isso significa que, uma vez criada, uma string não pode ser modificada diretamente. 
* As operações de manipulação de strings, na verdade, criam novas strings com as modificações desejadas.
//MM A propriedade .length retorna o número de caracteres em uma string.
//MM .toUpperCase() retorna uma nova string com todos os caracteres convertidos para maiúsculas.
//MM .toLowerCase() retorna uma nova string com todos os caracteres convertidos para minúsculas.
//MM .trim() remove espaços em branco do início e do final de uma string.
//MM .replace() substitui uma substring por outra. Ele pode usar strings ou expressões regulares para a busca.
//MM .split() divide uma string em um array de substrings, usando um separador especificado.
//MM .substring() extrai uma parte de uma string, com base em índices de início e fim.
//MM .indexOf() retorna o índice da primeira ocorrência de uma substring em uma string. Se a substring não for encontrada, retorna -1.

|-------------------------------|---------------------------------------------------------------|-----------------------------------------------------------------------|
|Método/Propriedade	            |Descrição	                                                    |Exemplo                                                                |
|.length	                    |Retorna o número de caracteres na string.	                    |"Olá".length -> 3                                                      |
|.toUpperCase()	                |Converte a string para maiúsculas.	                            |"Olá".toUpperCase() -> "OLÁ"                                           |
|.toLowerCase()	                |Converte a string para minúsculas.	                            |"Olá".toLowerCase() -> "olá"                                           |
|.trim()	                    |Remove espaços em branco do início e fim.	                    |" Olá ".trim() -> "Olá"                                                |
|.replace()	                    |Substitui uma substring por outra.	                            |"Olá mundo".replace("mundo", "JavaScript") -> "Olá JavaScript"         |
|.split()	                    |Divide a string em um array de substrings.	                    |"Olá mundo".split(" ") -> ["Olá", "mundo"]                             |
|.substring()	                |Extrai uma parte da string.	                                |"Olá mundo".substring(0, 3) -> "Olá"                                   |
|.indexOf()	                    |Retorna o índice da primeira ocorrência.	                    |"Olá mundo".indexOf("mundo") -> 4                                      |
|-------------------------------|---------------------------------------------------------------|-----------------------------------------------------------------------|
Considerações Adicionais
Imutabilidade: Lembre-se que strings em JavaScript são imutáveis. Os métodos de manipulação sempre retornam novas strings.
Unicode: JavaScript suporta Unicode, permitindo trabalhar com caracteres de diversos idiomas e símbolos.
Expressões Regulares: O método .replace() e outros métodos de string podem usar expressões regulares para buscas e substituições mais complexas.
Encadeamento de Métodos: É possível encadear métodos de string para realizar múltiplas operações em uma única linha.
nn //!S
nn //!S
nn //S 7 Manipulação de Números
nn //S 7.1 Métodos de Number e Math
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                              7.1 Métodos de Number e Math
|=======================================================================================================================================================================|
//MM O método .toFixed(n) formata um número usando notação de ponto fixo, com n dígitos após o ponto decimal. Retorna uma string.
//MM O método .toPrecision(n) formata um número com n dígitos significativos. Retorna uma string.
//MM A função Math.random() retorna um número pseudoaleatório de ponto flutuante no intervalo [0, 1)
//MM A função Math.floor(x) retorna o maior inteiro menor ou igual a x.
//MM A função Math.ceil(x) retorna o menor inteiro maior ou igual a x.
//MM A função Math.round(x) retorna o valor de x arredondado para o inteiro mais próximo.
//MM A função Math.max(x1, x2, ...) retorna o maior dos números passados como argumentos.
//MM A função Math.min(x1, x2, ...) retorna o menor dos números passados como argumentos.

|-------------------------------|-----------------------------------------------|---------------------------------------------------|
|Método/Função	                |Descrição	                                    |Exemplo                                            |
|.toFixed(n)	                |Formata com n dígitos após o ponto decimal.	|3.14159.toFixed(2) -> "3.14"                       |
|.toPrecision(n)	            |Formata com n dígitos significativos.	        |123.456.toPrecision(4) -> "123.5"                  |
|Math.random()	                |Retorna número aleatório entre 0 e 1.	        |Math.random() -> 0.12345...                        |
|Math.floor(x)	                |Maior inteiro menor ou igual a x.	            |Math.floor(3.9) -> 3                               |
|Math.ceil(x)	                |Menor inteiro maior ou igual a x.	            |Math.ceil(3.1) -> 4                                |
|Math.round(x)	                |Arredonda para o inteiro mais próximo.	        |Math.round(3.4) -> 3; Math.round(3.5) -> 4         |
|Math.max(x1, ...)	            |Retorna o maior número.	                    |Math.max(10, 5, 20) -> 20                          |
|Math.min(x1, ...)	            |Retorna o menor número.	                    |Math.min(10, 5, 20) -> 5                           |
|-------------------------------|-----------------------------------------------|---------------------------------------------------|
nn //!S
nn //!S
nn //S 8 Arrays (Listas)
nn //S 8.1 Declaração e Manipulação de Arrays
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                        8.1 Declaração e Manipulação de Arrays
|=======================================================================================================================================================================|
//MM Literal - Construtor
Arrays podem ser declarados de duas formas principais
nn //!S
nn //S 8.2 Métodos Principais de Arrays
|=======================================================================================================================================================================|
todo                                                                JAVASCRIPT INICIANTE
|=======================================================================================================================================================================|
todo                                                           8.2 Métodos Principais de Arrays
|=======================================================================================================================================================================|
//MM Arrays
O método .push(elemento) adiciona um ou mais elementos ao final do array e retorna o novo comprimento do array.
O método .pop() remove o último elemento do array e o retorna. Modifica o array original.
O método .shift() remove o primeiro elemento do array e o retorna. Modifica o array original.
O método .unshift(elemento) adiciona um ou mais elementos ao início do array e retorna o novo comprimento do array.
A propriedade .length retorna o número de elementos no array.
O método .indexOf(elemento) retorna o primeiro índice em que um dado elemento pode ser encontrado no array, ou -1 se não estiver presente.
O método .slice(inicio, fim) retorna uma cópia rasa de uma parte do array, selecionada do índice inicio ao índice fim (não incluso). O array original não é modificado.
O método .splice(inicio, deletarContagem, elementos...) altera o conteúdo de um array, removendo ou substituindo elementos existentes e/ou adicionando novos elementos 
    no lugar. Modifica o array original e retorna um array contendo os elementos removidos.
O método .concat(array2, array3, ...) retorna um novo array consistindo nos elementos do objeto em que foi chamado, seguidos pelos elementos de cada um dos arrays 
    passados como argumentos. Não modifica os arrays originais.
nn //!S
nn //!S

nn //!S
*/
console.clear();

import consoles from "./Iniciante/1_3.js";
import variaveis from "./Iniciante/2_1.js"
import tipos_primitivos from "./Iniciante/2_2.js"
import conversao from "./Iniciante/2_3.js";
import operadores from "./Iniciante/3_4.js";
import condicionais from "./Iniciante/4_1.js";
import estrutura from "./Iniciante/4_2.js";
import funcoes from "./Iniciante/5_1.js";
import f_tipo from "./Iniciante/6_1.js";
import arrays from "./Iniciante/8_1.js";