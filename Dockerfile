FROM archlinux:base-devel

# Install the base-devel package group.
RUN pacman -S --noconfirm base-devel

# Install git.
RUN pacman -S --noconfirm git

# Setup Yay.
RUN cd /opt
RUN git clone https://aur.archlinux.org/yay-git.git
RUN cd yay-git
RUN makepkg -si
RUN cd

# Install Rust and Cargo.
RUN pacman -S --noconfirm rust cargo

# Install Go Lang.
RUN pacman -S --noconfirm go

# Install Node.js and npm.
RUN pacman -S --noconfirm nodejs npm

# Install Java Development Kits.
RUN pacman -S --noconfirm jdk11-openjdk
RUN pacman -S --noconfirm jdk8-openjdk
RUN pacman -S --noconfirm jdk7-openjdk
RUN pacman -S --noconfirm jdk-openjdk

# Install Gradle.
RUN pacman -S --noconfirm gradle

# Install Apache Maven.
RUN pacman -S --noconfirm maven

# Install Apache Ant.
RUN pacman -S --noconfirm ant

# Install Apache Tomcat.
RUN pacman -S --noconfirm tomcat

# Install Android SDK.
RUN yay -S --noconfirm  android-studio
RUN yay -S --noconfirm 	android-sdk-cmdline-tools-latest
RUN yay -S --noconfirm 	android-sdk-build-tools
RUN yay -S --noconfirm  android-sdk-platform-tools
RUN yay -S --noconfirm 	android-platform