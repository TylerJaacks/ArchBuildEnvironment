FROM archlinux:base-devel

# Install the base-devel package group.
RUN pacman -S --noconfirm base-devel

# Install git.
RUN pacman -S --noconfirm git

# Install Rust and Cargo.
RUN pacman -S --noconfirm rust cargp

# Install Go Lang.
RUN pacman -S --noconfirm go

# Install Node.js and npm.
RUN pacman -S --noconfirm nodejs npm