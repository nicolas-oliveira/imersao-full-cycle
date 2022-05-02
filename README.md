# Codepix

Copix é uma aplicação de larga escala que tenta mostrar o poder que uma aplicação de microserviços pode alcançar.

### Subindo a aplicação

Todo o ambiente é configurado através do docker e do docker-compose que faz o orquestramento.

Para subir o ambiente utiliza-se:
```bash
docker-compose up
```

Para verificar os serviços que foram abertos:
```bash
docker-compose ps | less -S
```

Para acessar o bash correspondente ao docker:
```bash
docker exec -it codepix_app_1 bash
```

Para realizar a instalação e qualquer tipo de conexão é necessário instalar:
```bash
go mod init
go mod tidy
```

Precisei configurar o ambiente com WSL
- Mudar a versão manualmente
- Instalar as extenções corretas e desabilitar todo o ambiente de ESLINT, prettier etc..
- Fazer a importação pelo mod (Especificamente aquele que ele disponibilizou)
- Mudar as configuração


Para a instalação de todos os pacotes da parte do go, basta rodar:
```
go mod tidy
```

Para rodar os testes `Dentro da pasta correspondente ao go.mod`:
```
go test ./...
```
Comando maluco do grpc
```bash
protoc --go_out=application/grpc/pb --go_opt=paths=source_relative --go-grpc_out=application/grpc/pb --go-grpc_opt=paths=source_relative --proto_path=application/grpc/protofiles application/grpc/protofiles/*.proto 
```

Cliente grpc
```
evans -r repl
```

Para inicializar o projeto de CLI do projeto
```
/go/bin/cobra-cli init
```
Para adicionar um novo argumento da CLI do projeto
```
/go/bin/cobra-cli add grpc
```