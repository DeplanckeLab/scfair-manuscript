# scFAIR - SAMap
SAMap is used for transferring the annotation across species, from our curated **Mouse Brain Atlas** to the **Human Allen Brain** dataset.

In this subfolder are all the scripts needed to run the SAMap tool. In particular, we've created a Docker containing all tools (blast, python, and dependencies) to run all the steps of the pipeline and generate the figures. We also created a kernel file, to use the Docker as a Jupyter Notebook kernel.

# Installation
## Docker image
First, you need to build a local Docker image using the [Dockerfile](Dockerfile) (here I call the local image "samap").

```bash
docker build . -t samap
```

## [Optional] Create a JupyterNotebook kernel using the Docker image
Then, you can copy the provided kernel file: [kernel.json](kernel.json) to the Jupyter notebook kernel folder on your local machine.

e.g. on Linux, it is stored in /usr/local/share/jupyter/kernels/

# Running SAMap
You simply need to run the [SAMap_run.ipynb](SAMap_run.ipynb) script (it makes a system call to the [map_genes.sh](map_genes.sh) script for running BLAST).

# Output of SAMap
## 1. Output of blast
Outputs for tblastx are in the [maps/](maps/) folder.

## 2. Output of SAMap run() function
We create two SAM object after SAMap is run, that we save in binary files using pickle: output/sm.pkl and output/sm_cluster.pkl.

Note: These objects are too big for GitHub, so you will have to recreate them.

## 3. Specific data to export to the Seurat object (and later .loom/.h5ad files)
After the SAM object is created, we run the `get_mapping_scores()` function to extract resulting tables showing the highest-scoring alignment scores for each cell type (D) and pairwise mapping scores between cell types (MappingTable). These tables are saved in [output/*.tsv](output/).

## 4. Figures
We generate several figures that we export in the [figures/](figures/) folder:
- sankey plots for the annotation <-> cluster mapping between the two species as .html files
- chord plots for the annotation <-> cluster mapping between the two species as .html files
- SAMap integration plot of the two species as pdf/png plots
