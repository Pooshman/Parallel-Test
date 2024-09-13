rule all:
    input:
        "results/output.txt"

rule simulate_work:
    output:
        "results/output.txt"
    shell:
        """
        sleep 10
        echo 'Task completed on node: ' $(hostname) >> {output}
        """
