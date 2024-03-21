# Use the NVIDIA PyTorch container as the base image
FROM nvcr.io/nvidia/pytorch:24.02-py3

# Set the default user to non-root
ARG USERNAME=torch
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Install torch2trt
RUN git clone https://github.com/NVIDIA-AI-IOT/torch2trt && \
	cd torch2trt && \
    git checkout bf84e1a && \
	pip3 install . && \
	cmake -B build . && \
	cmake --build build --target install && ldconfig && \
	cd .. && rm -rf ./torch2trt

# Install additional Python dependencies
RUN pip3 install ujson

# Create a new user with the specified UID and GID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# Set the default user
USER $USERNAME

# Set the working directory
WORKDIR /workspaces
