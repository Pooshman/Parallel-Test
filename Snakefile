rule all:
    input:
        "results/output.txt"

rule simulate_work:
    output:
        "results/output.txt"
    shell:
        """
        sbatch --nodes={cluster.nodes} --ntasks-per-node={cluster.ntasks-per-node} \
               --cpus-per-task={cluster.cpus-per-task} --mem={cluster.mem} --time={cluster.time} \
               --output=output_{wildcards}.txt --wrap="sleep 60; echo 'Task completed on node: $(hostname)' >> {output}"
        """
