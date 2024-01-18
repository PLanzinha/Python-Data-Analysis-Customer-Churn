FROM python:3.10-slim

RUN pip install jupyterlab

WORKDIR /workspace

EXPOSE 8888

CMD ["jupyter-lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
