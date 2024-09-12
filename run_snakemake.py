import subprocess

def run_snakemake():
    # Define Snakemake command
    snakemake_cmd = [
        "snakemake",
        "--snakefile", "Snakefile",
        "--cores", "16",  # Adjust according to the number of cores you want to use
        "--jobs", "100",  # Maximum number of jobs to submit at once
        "--latency-wait", "60",
        "--keep-going",  # Continue running other jobs even if some fail
    ]
    
    # Execute Snakemake command
    subprocess.run(snakemake_cmd)

if __name__ == "__main__":
    run_snakemake()
