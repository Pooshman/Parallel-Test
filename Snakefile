# Snakefile

import os

# Define the input and output files
rule all:
    input:
        expand("results/output_{i}.txt", i=range(5))

# Rule to simulate work and output node activity
rule simulate_work:
    output:
        "results/output_{i}.txt"
    params:
        node_id="{i}"
    shell:
        """
        echo "Running on node $(hostname) with job {params.node_id}" > {output}
        sleep 60
        """
