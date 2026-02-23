# Devpod

A local devpod environment to run claude-code with the local LLM of your choice. I personally run my LLM on a host in my LAN with ollama and ssh portforward the Ollama instance to the box I run my devpod.

Docker command for running ollama:
```bash
docker run -d --gpus=all -v ollama:/root/.ollama -p 127.0.0.1:11434:11434 --name ollama ollama/ollama
```

Command to proxy the traffic from ollama host machine to local devpod. Binding ollama port to our docker network adapter.
```bash
ssh -L 172.17.0.1:11434:127.0.0.1:11434 johnproxy@192.168.1.28
```