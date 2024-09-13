rule all:
    input:
        expand("results/output_{n}.txt", n=range(1, 6))

rule simulate_work:
    output:
        "results/output_{n}.txt"
    shell:
        """
        sbatch --nodes=1 --ntasks=1 --cpus-per-task=4 --mem=4G --time=00:01:00 \
        --output={output} --wrap="sleep 10; echo 'Task completed on node: $(hostname)' >> {output}"
        """
