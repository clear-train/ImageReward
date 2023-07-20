from ImageReward import ReFl_lora

if __name__ == "__main__":
    args = ReFl_lora.parse_args()
    trainer = ReFl_lora.Trainer("CompVis/stable-diffusion-v1-4", "data/refl_data.json", args=args)
    trainer.train(args=args)
