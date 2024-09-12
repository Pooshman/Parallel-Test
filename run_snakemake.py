#!/usr/bin/env python

import subprocess

# Define Snakemake command with cluster configuration
snakemake_cmd = [
    "snakemake",
    "--snakefile", "Snakefile",
    "--configfile", "config.yaml",
    "--cluster-config", "cluster.yaml",
    "--jobs", "100",
    "--use-conda",
    "--keep-going",
    "--latency-wait", "60",
]

# Execute Snakemake command
subprocess.run(snakemake_cmd)
