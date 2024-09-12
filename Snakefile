rule all:
    input:
        "results/processed_data.txt"

rule generate_data:
    output:
        "data/input_data.txt"
    shell:
        "echo 'Generating data' > {output}"

rule process_data:
    input:
        "data/input_data.txt"
    output:
        "results/processed_data.txt"
    shell:
        "echo 'Processing data' > {output}"
