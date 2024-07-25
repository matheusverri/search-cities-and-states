# Meu Aplicativo Ruby on Rails

Este é um aplicativo Ruby on Rails configurado para rodar em um ambiente Docker. Este README fornece instruções detalhadas sobre como clonar o repositório, iniciar o projeto, configurar o banco de dados e executar a suíte de testes.

## Pré-requisitos

Antes de começar, você precisará ter o seguinte instalado em sua máquina:

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/)

## Clonando o Repositório

1. **Clone o repositório**: Execute o comando abaixo para clonar o repositório do GitHub:

    ```sh
    git clone https://github.com/matheusverri/search-cities-and-states.git
    ```

2. **Navegue até o diretório do projeto**:

    ```sh
    cd search-cities-and-states
    ```

## Configurando e Rodando o Projeto

1. **Construa e inicie os contêineres Docker**: Execute o comando abaixo para construir as imagens Docker e iniciar os contêineres definidos no `docker-compose.yml`. 

    ```sh
    docker-compose up --build
    ```

2. **Crie o banco de dados**: Abra um novo terminal, acesse o contêiner da aplicação e crie o banco de dados:

    ```sh
    docker-compose exec web bash
    rails db:create
    ```

3. **Execute as migrações do banco de dados**: No mesmo terminal, aplique as migrações necessárias:

    ```sh
    rails db:migrate
    ```

4. **Popule o banco de dados com dados iniciais (se necessário)**: Caso seu projeto inclua dados iniciais para configuração, você pode rodar:

    ```sh
    rails db:seed
    ```

5. **Acesse a aplicação**: Depois que os contêineres estiverem em execução, você pode acessar a aplicação no seu navegador através do endereço:

    ```
    http://localhost:3000
    ```

## Executando a Suíte de Testes

1. **Abra um terminal e acesse o contêiner da aplicação**:

    ```sh
    docker-compose exec web bash
    ```

2. **Execute os testes**: Dentro do contêiner, rode a suíte de testes com o seguinte comando:

    ```sh
    bundle exec rspec
    ```

## Parando e Removendo os Contêineres

Para parar e remover os contêineres Docker, execute o comando abaixo:

```sh
docker-compose down
