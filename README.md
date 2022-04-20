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