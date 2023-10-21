# Use a imagem base Ruby
FROM ruby:3.1.3

# Defina o diretório de trabalho
WORKDIR /app

# Instale as dependências necessárias
RUN apt-get update && \
    apt-get install -y curl openjdk-11-jdk nodejs npm dos2unix && \
    rm -rf /var/lib/apt/lists/*  
    # Limpa o cache do APT para reduzir o tamanho da imagem

# Instale o Jekyll e atualize o npm
RUN gem install jekyll && \
    npm update && npm install -g fsh-sushi@latest

# Verifique a versão do Sushi
RUN echo && sushi --version

# Crie um diretório para pacotes FHIR e conceda as permissões adequadas
RUN mkdir -p /root/.fhir/packages && \
    chmod -R 777 /root/.fhir/packages

# Copie os arquivos para o container
COPY . .

# Liste os arquivos no diretório /app para verificação
RUN ls -al /app

# Converta terminações de linha e dê permissão de execução ao script
RUN dos2unix _updatePublisher.sh && \
    chmod +x _updatePublisher.sh

# Execute o script para atualizar o IG Publisher
RUN bash _updatePublisher.sh -y

# Defina o comando padrão para o container
CMD ["./_genonce.sh"]
