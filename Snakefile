rule all:
    input:
        "results/output.txt"

rule simulate_work:
    output:
        "results/output.txt"
    shell:
        """
        sbatch --nodes=1 --ntasks=1 --cpus-per-task=4 --mem=4G --time=00:01:00 \
        --output=results/output.txt --wrap="sleep 10; echo 'Task completed on node: $(hostname)' >> results/output.txt"
        """
