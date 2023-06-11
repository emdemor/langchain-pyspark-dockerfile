build:
	docker build -t pyspark-jupyter .

run: build
	docker run -p 8888:8888 -v project:/home/jovyan/project pyspark-jupyter &
	sleep 5
	xdg-open http://localhost:8888/lab
