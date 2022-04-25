start:
	cd codepix && docker-compose up


run:
	cd codepix && docker exec -it codepix_app_1 bash

create_grpc:
	cd codepix && docker exec -it codepix_app_1 bash -c "protoc --go_out=application/grpc/pb --go_opt=paths=source_relative --go-grpc_out=application/grpc/pb --go-grpc_opt=paths=source_relative --proto_path=application/grpc/protofiles application/grpc/protofiles/*.proto && clear && echo 'Arquivos de configuração do grpc criado com sucesso'"
