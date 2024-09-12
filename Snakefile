# Snakefile

# Define the input and output files
rule all:
    input:
        "results/output.txt"

# Rule to simulate work and output node activity
rule simulate_work:
    output:
        "results/output.txt"
    shell:
        """
        echo "Running on node $(hostname)" > {output}
        sleep 30
        """
