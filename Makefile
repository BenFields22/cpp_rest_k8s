default:
	g++ source.cpp --std=c++11 -lpthread -I./include/ -I/opt/homebrew/Cellar/asio/1.24.0/include -w -o run 
docker:
	docker build . -t potatofields/cserver:latest
push:
	docker push potatofields/cserver:latest
clean:
	rm ./run
