clean:
	rm -rf ./bin


deps:
	clear
	mix deps.get


build: 
	clear
	mix escript.build


hello: build
	./bin/myCLI hello dev
