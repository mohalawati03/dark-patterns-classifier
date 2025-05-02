#!/bin/bash
pip install gdown
python download_model.py
uvicorn llm_model_api:app --host 0.0.0.0 --port 10000
