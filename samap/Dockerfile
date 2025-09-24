# Start from Python 3.10.15 Alpine image
FROM python:3.10.15

# Update
RUN apt update && \
	apt upgrade -y && \
	apt install -y alien

# Upgrade pip
RUN python -m pip install --upgrade pip ipykernel ipyevents jupyter ipywidgets pandas==1.5.1 numpy==1.23.5 samap==1.0.16 holoviews-samap==1.0.1 bokeh==2.4.3 holoviews==1.16.0 colorlover fast-histogram leidenalg dill plotly==5.19.0 anndata==0.10.9 sam-algorithm==1.0.2 scipy==1.12.0 numpy==1.23.5 scanpy==1.9.3 hnswlib==0.7.0 numba==0.56.3 h5py==3.8.0

# Install blast
RUN wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.16.0/ncbi-blast-2.16.0+-1.x86_64.rpm && \
    alien -i ncbi-blast-2.16.0+-1.x86_64.rpm && \
    rm ncbi-blast-2.16.0+-1.x86_64.rpm
