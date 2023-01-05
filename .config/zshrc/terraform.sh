complete -C terraform terraform

export TF_CLI_ARGS_plan="-parallelism=200 -lock=false"
export TF_CLI_ARGS_apply="-parallelism=200"
