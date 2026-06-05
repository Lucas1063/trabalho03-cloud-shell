# Trabalho 03 - Administração de Ambientes Linux

**Nome do Aluno:** Lucas Weigel  
**Tema do Trabalho:** Sistema de Streaming de Música (Unify)  
**Instituição:** Unidavi  

---

## 📌 Descrição do Cenário

O projeto **"Unify"** simula a infraestrutura de uma plataforma de streaming de áudio. Este ambiente foi provisionado utilizando Docker com um container Ubuntu e configurado inteiramente via Shell Script. O objetivo é automatizar tarefas operacionais de DevOps, como instalação de servidores web, processadores de mídia (FFmpeg), backups automatizados, deploy de interface web, monitoramento de recursos físicos e controle restrito de permissões para diretórios de áudio.

---

## 🛠️ Tecnologias Utilizadas

* **Sistema Operacional:** Linux (Ubuntu 22.04)
* **Automação:** Shell Script (Bash)
* **Infraestrutura:** Docker & Docker Compose
* **Servidor Web:** Apache2
* **Processamento de Mídia:** FFmpeg

---

## 📂 Estrutura de Pastas

* `scripts/`: Contém todos os 9 scripts de automação + o menu interativo.
* `source/`: Código fonte estático (HTML) da plataforma web Unify.
* `backups/`: Diretório persistente onde os arquivos `.tar.gz` são salvos.
* `logs/`: Histórico de execução de todas as operações e monitoramento.
* `evidencias/`: Capturas de tela comprovando a execução do projeto.

---

## ⚙️ Explicação dos Scripts

1. **`01_update.sh`:** Atualiza a lista de pacotes e o sistema operacional via `apt`.
2. **`02_apache.sh`:** Instala e valida o Apache2 e o pacote FFmpeg para mídias.
3. **`03_estrutura.sh`:** Cria as subpastas persistentes do streaming (musicas, podcasts, playlists).
4. **`04_backup.sh`:** Compacta a pasta de mídias e salva em `/backups` com data/hora.
5. **`05_deploy.sh`:** Copia os arquivos de `/source` para `/var/www/html`.
6. **`06_processos.sh`:** Lista o TOP 10 processos que mais consomem memória, busca e encerra processos.
7. **`07_monitoramento.sh`:** Analisa uso de CPU, RAM e Disco, e valida o status do Apache.
8. **`08_usuarios_permissoes.sh`:** Cria o grupo `unify_ops`, usuário `unify_dj` e restringe a pasta de mídias.
9. **`09_relatorio.sh`:** Gera um compilado geral do sistema e salva em `/logs`.
* **`menu.sh`:** Central interativa para executar todos os scripts acima.

---

## 🌐 Como Acessar o Apache
Após rodar o script de Deploy (Opção 5 no Menu), abra o seu navegador na máquina local e acesse:
* **http://localhost:8080**

🔗 Links Importantes
* **DockerHub:** https://hub.docker.com/repository/docker/lucasw1063/unify-streaming-cloud/general

---

## 🚀 Como Executar o Projeto

1. Clone este repositório.

2. Na raiz do projeto, suba o container em background:
   ```bash
   docker compose up -d --build
   ```

3. Acesse o terminal do container Linux:
   ```bash
   docker exec -it trabalho03-linux bash
   ```

4. Dê permissão de execução para todos os scripts:
   ```bash
   chmod +x /scripts/*.sh
   ```

5. Execute o menu interativo:
   ```bash
   /scripts/menu.sh
   ```