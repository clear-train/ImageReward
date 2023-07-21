accelerate launch --multi_gpu --mixed_precision=fp16 --num_processes=8  refl.py \
  --resolution=512 --center_crop --random_flip \
  --train_batch_size=2 \
  --gradient_accumulation_steps=4 \
  --gradient_checkpointing \
  --max_train_steps=100 \
  --learning_rate=1e-05 \
  --max_grad_norm=1 \
  --lr_scheduler="constant" --lr_warmup_steps=0 \
  --output_dir="checkpoint/refl" \
  --grad_scale 0.001 \
  --checkpointing_steps 100