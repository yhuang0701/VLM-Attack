# Visual Adversarial Attacks on Multimodal Models

# Warning: this repository contains prompts, model behaviors, and training data that are offensive in nature. 

This repository contains the code for our CS598 Principles of Generative AI final project. Our project is focused on generating adversarial examples for multimodal models.

Our implementation is based on Xiangyu Qi et al's [implementation](https://github.com/Unispac/Visual-Adversarial-Examples-Jailbreak-Large-Language-Models) of the paper [Visual Adversarial Examples Jailbreak Large Language Models](https://arxiv.org/abs/2306.13213).

## Setup
`conda env create -f environment.yml`

## Usage

- To generate adversarial examples for MiniGPT-4, run the following command:
```shell
python3 minigpt_visual_attack.py \
    --cfg_path eval_configs/minigpt4_eval.yaml  \
    --gpu_id 0 --n_iters 500 \
    --constrained --eps 16 --alpha 1 \
    --save_dir visual_constrained_eps_16 \
    > run.log 2>&1 &
```

- To run inference

```shell
python3 minigpt_inference.py \
    --cfg-path eval_configs/minigpt4_eval.yaml \
    --image_file <path_to_attack_image>
```