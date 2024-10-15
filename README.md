# Full Cycle - Docker & Go Lang

Este projeto é um simples contêiner Docker que executa uma aplicação Go Lang para imprimir a mensagem **"Full Cycle Rocks!!"**. A imagem Docker gerada é extremamente pequena (menos de 2MB), ideal para ambientes otimizados.

## Pré-requisitos

- Docker instalado em sua máquina.
- Conta no [Docker Hub](https://hub.docker.com/) (caso queira publicar sua própria imagem).

## Como Usar

### 1. Build da Imagem

Primeiro, clone o repositório ou faça o download do código. Depois, navegue até o diretório do projeto.

Execute o seguinte comando para criar a imagem Docker localmente:

```bash
docker build -t <seu-usuario>/fullcycle .
