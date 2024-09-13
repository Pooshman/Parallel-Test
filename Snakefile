rule all:
    input:
        "results/final_output.txt"

rule simulate_work:
    output:
        "results/output_{n}.txt"
    shell:
        """
        sbatch --nodes=1 --ntasks=1 --cpus-per-task=4 --mem=4G --time=00:01:00 \
        --output={output} --wrap="sleep 10; echo 'Task completed on node: $(hostname)' >> {output}"
        """

rule combine_outputs:
    input:
        expand("results/output_{n}.txt", n=range(1, 6))
    output:
        "results/final_output.txt"
    shell:
        """
        cat results/output_*.txt > results/final_output.txt
        """
