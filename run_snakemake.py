# run_snakemake.py

import subprocess

# Define Snakemake command
snakemake_cmd = [
    "snakemake",
    "--snakefile", "Snakefile",
    "--cores", "16",  # Total number of cores to be used
    "--cluster-config", "cluster.yaml",
    "--cluster", "sbatch --nodes={nodes} --ntasks-per-node={ntasks-per-node} --cpus-per-task={cpus-per-task} --mem={mem} --time={time}",
    "--jobs", "100",  # Maximum number of jobs to be submitted at once
    "--use-conda",
    "--rerun-incomplete",
    "--keep-going",
    "--latency-wait", "60"
]

# Run Snakemake command
subprocess.run(snakemake_cmd, check=True)
