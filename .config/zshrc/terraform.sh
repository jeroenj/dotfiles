complete -C terraform terraform

export TF_CLI_ARGS_plan="-parallelism=200 -lock=false"
export TF_CLI_ARGS_apply="-parallelism=200"
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
