# Desafio ByCoders
![Exemplo de resultado](https://github.com/daniloalvescosta/desafio-dev/blob/main/example.png)

## Sumário 💡

 1. 🖥️ O projeto em si
 2. 🛠️ Como configurar o ambiente e subir o projeto
 3. 👷‍♂️ Como rodar a suit de testes
 4. ✅ Requisitos do desafio que foram atendidos
 5. 📸 Como utilizar a aplicação

## 1 - 🖥️ O projeto em si
Este projeto é fruto de um desafio [proposto pela ByCoders](https://github.com/ByCodersTec/desafio-dev)  onde a ideia central consiste em fazer um sistema que importe um arquivo .txt e renderize o seu corpo em uma lista, junto a isso é pedido a implementação de uma regra de negócio para termos o valor das entradas, saídas e o balanço final de todas as transações financeiras.

## 2 - 🛠️ Como configurar o ambiente e subir o projeto
Antes de tudo é necessário ter o Docker em sua Máquina.
Tendo ele instalado, o processo é simples:

    docker-compose build
    docker-compose run --rm web bin/rails db:drop db:create db:migrate db:seed
    docker-compose up web

Feito isso você pode abrir o projeto em seu Navegador por meio do http://localhost:3000/, caso queira um arquivo .txt de exemplo para importar, dentro deste repositório [há um a ser usado de exemplo](https://github.com/daniloalvescosta/desafio-dev/blob/main/CNAB.txt)

## 3 -👷‍♂️ Como rodar a suit de testes
Para executar a suit de testes execute estes comandos em seu terminal:

    docker-compose run --rm test bash
    rspec

Para sair basta digitar **"exit"**

## 4 - ✅ Requisitos do desafio que foram atendidos

 - Aplicação Dockerizada
 - Utilização de Linter (Rubocop)
 - Utilização de testes automatizados
 - Interface visual (Dashboard) para realização das actions
 - Leitura, limpeza e renderização de dados de um arquivo de texto
 - Utilização de Commits Atomicos e Commits Semanticos
 - Documentação (exibida logo a baixo)
 
## 5 -📸 Como utilizar a aplicação

Para utilizar este app as etapas são bem simples:

 1. Abra a aplicação
 2. Clique no botão "selecionar arquivo"
 3. Clique em "Importar"
 4. E veja a lista de dados importados.