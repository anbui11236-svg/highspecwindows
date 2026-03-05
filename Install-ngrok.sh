curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com bookworm main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install ngrok

  ngrok config add-authtoken 3AXFxsChR3saE4vq82szUN0qTXJ_hiDufJpR1SaEP8kvqtZK

  ngrok TCP 5900
