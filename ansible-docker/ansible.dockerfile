# Use an official Python image as the base
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Install Ansible
RUN pip install ansible

# Install additional dependencies if needed
# RUN apt-get update && apt-get install -y ...

# Copy your Ansible playbooks and configuration files
COPY ansible /app/ansible

# Set the default command to run Ansible
CMD ["ansible-playbook", "--version"]
