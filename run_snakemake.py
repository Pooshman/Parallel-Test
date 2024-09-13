import subprocess

# Define Snakemake command with cluster support
cmd = [
    "snakemake",
    "--snakefile", "Snakefile",
    "--jobs", "5",  # Max parallel jobs
    "--cluster-config", "cluster.yaml",
    "--cluster", (
        "sbatch --nodes={cluster.nodes} --ntasks={cluster.ntasks-per-node} "
        "--cpus-per-task={cluster.cpus-per-task} --mem={cluster.mem} --time={cluster.time}"
    ),
    "--keep-going",
    "--latency-wait", "20"
]

# Execute the Snakemake command
subprocess.run(cmd)
