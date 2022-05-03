# ---------------------------------
# ---------- VARIABLES ------------
RED=tput setaf 1;
GREEN=tput setaf 2;

REMOVE_BACK_LINE=tput cuu 1;
REMOVE_2_LINE=tput cuu 2;

PRINT_RED=$(RED) printf
PRINT_GREEN=$(GREEN) printf
# ---------------------------------

all:
	$(REMOVE_BACK_LINE) $(PRINT_RED) "A CLI deve ter argumentos adicionais";

up:
	cd codepix && docker-compose up

sh:
	cd codepix && docker exec -it codepix_app_1 bash

create_grpc:
	cd codepix && docker exec -it codepix_app_1 bash -c \
	"protoc --go_out=application/grpc/pb --go_opt=paths=source_relative --go-grpc_out=application/grpc/pb --go-grpc_opt=paths=source_relative --proto_path=application/grpc/protofiles application/grpc/protofiles/*.proto" \
	&& $(PRINT_GREEN) "\n\nArquivos de configuração do grpc criados com sucesso\n"

list:
	docker ps | less -S

    