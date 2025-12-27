FROM kalilinux/kali-rolling

# Create non-root user
RUN useradd -m sandbox

# Install basic tools
RUN apt update && apt install -y curl wget git iputils-ping net-tools nano

# Use non-root user
USER sandbox

WORKDIR /home/sandbox

CMD ["bash"]
