# Gunakan image python versi 3.9
FROM python:3.13

# Set working directory
WORKDIR /app

# Copy file requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh isi folder app ke /app di dalam container
COPY app/ .

# Jalankan aplikasi
CMD ["python", "app.py"]
