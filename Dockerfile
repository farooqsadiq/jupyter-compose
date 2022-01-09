FROM continuumio/miniconda3

RUN /opt/conda/bin/conda install jupyter -y --quiet

COPY notebooks /opt/notebooks

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=*", "--port=8888", "--no-browser", "--allow-root"]

