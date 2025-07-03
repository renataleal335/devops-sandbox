FROM python:3.13.4-alpine3.22

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo de requirements
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação
COPY . .

# expoe a porta 8000
EXPOSE 8000

# define o comando de execução
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]