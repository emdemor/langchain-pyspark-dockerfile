build:
	docker build -t pyspark-jupyter .

run:
	docker run -p 8888:8888 pyspark-jupyter