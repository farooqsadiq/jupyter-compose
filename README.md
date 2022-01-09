https://docs.anaconda.com/anaconda/user-guide/tasks/docker/

docker run -i -t -p 8888:8888 continuumio/miniconda3 /bin/bash \
-c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir \
/opt/notebooks && /opt/conda/bin/jupyter notebook \
--notebook-dir=/opt/notebooks --ip='*' --port=8888 \
--no-browser --allow-root"


Use my image
docker run -ti -v $(pwd)/notebooks:/opt/notbooks -p 8888:8888 --rm local/jupyter bash -o vi


Use docker-compose up 
