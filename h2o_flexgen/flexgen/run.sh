python flex_opt.py \
--gpu-batch-size 1 \
--overlap false \
--hh-ratio 0.1 \
--hh-all \
--path /data/noah/flexgen/opt_weights \
--offload-dir /data/noah/flexgen/flexgen_offload_dir \
--model facebook/opt-1.3b \
--percent 100 0 0 0 100 0 \
--no-log \