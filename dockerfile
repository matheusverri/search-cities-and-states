# Dockerfile
FROM ruby:2.7

# Instalar dependências necessárias
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Atualizar o RubyGems
RUN gem update --system 3.3.22

# Configurar o diretório da aplicação
RUN mkdir /myapp
WORKDIR /myapp

# Copiar os arquivos de dependências
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Instalar as dependências do bundle
RUN bundle install

# Copiar o restante do código da aplicação
COPY . /myapp

