#!/usr/bin/env python

import subprocess

# Define Snakemake command with cluster configuration
snakemake_cmd = [
    "snakemake",
    "--snakefile", "Snakefile",
    "--cluster-config", "cluster.yaml",
    "--jobs", "100",  # Maximum number of jobs to submit in parallel
    "--use-conda",
    "--keep-going",
    "--latency-wait", "60",
]

# Execute Snakemake command
subprocess.run(snakemake_cmd)
