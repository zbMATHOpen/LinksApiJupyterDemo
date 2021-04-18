FROM python
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /notebooks
CMD jupyter notebook --allow-root --no-browser --ip="0.0.0.0" --notebook-dir=/notebooks --NotebookApp.token=''