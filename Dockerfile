FROM ubuntu:22.04

# Evita perguntas chatas durante a instalação de pacotes
ENV DEBIAN_FRONTEND=noninteractive

# Instala ferramentas básicas do Linux
RUN apt-get update && apt-get install -y sudo curl nano tar bc

# Mantém o container ligado para rodarmos os scripts depois
CMD ["tail", "-f", "/dev/null"]