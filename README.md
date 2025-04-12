# Frontend – Loja de Imãs 🧲

Este projeto faz parte do conteúdo necessário para entrega do MVP e conclusão da 2ª sprint do curso da PUC-Rio de Engenharia de Software.

## Objetivo

Mostrar todos os recursos que compõem o frontend (HTML, CSS e JavaScript), bem como sua comunicação com o backend via API REST.

---

## Tecnologias Utilizadas

- HTML5
- CSS3
- JavaScript puro (sem frameworks)
- API REST integrada (via `fetch`) com o backend

---

## Como executar (modo simples)

Você pode rodar o frontend diretamente no navegador:

1. Faça o download do repositório
2. Navegue até a pasta `frontend SPA`
3. Clique duas vezes em `index.html` ou abra-o com o navegador de sua preferência

---

## Como executar com o Docker

Você também pode subir o frontend como um serviço isolado via Docker:

### 📦 Passo 1: Build da imagem

```bash
docker build -t mvp2-frontend ./frontend-spa
```

### 🚀 Passo 2: Executar o container

```bash
docker run -d -p 8080:80 --name frontend-container mvp2-frontend
```

Acesse: http://localhost:8080

### 🧼 Dica: limpar containers

```bash
docker stop frontend-container

docker rm frontend-container
```

---

## Executar backend + frontend juntos (com Docker Compose)

Caso deseje rodar o frontend em conjunto com o backend (em arquitetura de microsserviços), utilize o seguinte comando a partir da raiz do projeto (onde está o `docker-compose.yml`):

```bash
docker compose up --build
```

Esse comando irá:

- Construir os serviços `frontend` e `backend`
- Subir ambos em containers separados
- Expor:
  - Frontend: http://localhost:8080
  - Backend (API): http://localhost:5000

Para parar:

```bash
docker compose down
```

---

## Observações

- Certifique-se de que o **backend esteja rodando** antes de testar ações como "adicionar imã", "buscar por medida" ou "calcular frete".
- O frontend faz requisições para `http://localhost:5000`, então o backend precisa estar disponível nessa porta, ou a URL de requisição deverá ser ajustada no `script.js`.

---

## Estrutura

```bash
frontend SPA/
├── img/                # Imagens utilizadas na interface
├── index.html          # Página principal da SPA
├── script.js           # Funções JS para consumir a API
├── style.css           # Estilização customizada
├── README.md           # Este arquivo
```

---

## Arquitetura

A aplicação segue arquitetura de microsserviços. Este frontend é um serviço separado e pode ser executado em seu próprio container Docker, consumindo dados da API REST hospedada separadamente.
