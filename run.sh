python3 minigpt_visual_attack.py \
    --cfg_path eval_configs/minigpt4_eval.yaml  \
    --gpu_id 0 --n_iters 500 \
    --constrained --eps 16 --alpha 1 \
    --save_dir visual_constrained_eps_16 \
    > run.log 2>&1 &