# Imagem base com Python e Spark
FROM jupyter/pyspark-notebook

COPY project /home/jovyan/project
WORKDIR /home/jovyan/project
USER root
RUN chown -R jovyan:users /home/jovyan/project
USER jovyan

RUN pip install -r /home/jovyan/project/requirements.txt

EXPOSE 8888

# Comando para iniciar o Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''", "--NotebookApp.default_url='/lab/tree'"]
