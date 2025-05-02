import gdown
import os

# Make sure the models folder exists
os.makedirs("Dark Patterns Project/models", exist_ok=True)

# Google Drive file ID
file_id = "14Sz9HmdhMHnaEuQXO2kND_GXTwHJ8lK4"
url = f"https://drive.google.com/uc?id={file_id}"
output_path = "Dark Patterns Project/models/enhanced_bert_model.keras"

# Download only if the file doesn't exist
if not os.path.exists(output_path):
    print("Downloading model from Google Drive...")
    gdown.download(url, output_path, quiet=False)
else:
    print("Model already exists.")
