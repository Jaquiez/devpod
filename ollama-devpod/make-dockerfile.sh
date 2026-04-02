wget https://raw.githubusercontent.com/anthropics/claude-code/refs/heads/main/.devcontainer/Dockerfile -O ./devpod/Dockerfile

wget https://raw.githubusercontent.com/anthropics/claude-code/refs/heads/main/.devcontainer/init-firewall.sh -O ./devpod/init-firewall.sh

sed -i '/^USER node$/i ENV ANTHROPIC_AUTH_TOKEN="ollama"\nENV ANTHROPIC_API_KEY=""\nENV ANTHROPIC_BASE_URL="http://host.docker.internal:11434"\nENV CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1\nENV DISABLE_TELEMETRY=1\nENV DISABLE_ERROR_REPORTING=1\nENV DISABLE_BUG_COMMAND=1\nENV CLAUDE_CODE_COMPLETED_ONBOARDING=true' ./devpod/Dockerfile