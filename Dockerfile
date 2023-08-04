# Spécifiez l'image de base à utiliser (par exemple, une image Python)
FROM python:3.8.12

# Copiez le contenu de votre projet dans l'image
COPY . /streamlit_app

# Définissez le répertoire de travail (le répertoire où vos commandes seront exécutées)
WORKDIR /streamlit_app

# Installez les dépendances à partir du fichier requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8501


# Commande pour exécuter votre application Streamlit
CMD ["streamlit", "run", "streamlit_app.py","--server.port", "8501"]
