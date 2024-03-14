# Use an official Ubuntu image as a base
FROM ubuntu:latest

# Set environment variables
ENV FLUTTER_HOME=/usr/local/flutter
ENV PATH=${FLUTTER_HOME}/bin:${PATH}

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    unzip \
    xz-utils \
    libglu1-mesa && \
    rm -rf /var/lib/apt/lists/*

# Download and install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
    ${FLUTTER_HOME}/bin/flutter precache

# Set the working directory in the container
WORKDIR /app

# Copy the pubspec.yaml and pubspec.lock files to the container
COPY pubspec.* ./

# Install dependencies
RUN flutter pub get

# Copy the entire project directory to the container
COPY . .

# Build the Flutter app for release
# RUN flutter build apk --release

# # Expose the port the app runs on
# EXPOSE 8080

# # Command to run the Flutter app when the container starts
# CMD ["flutter", "run", "--release", "--no-sound-null-safety", "--no-resident", "--no-hot", "--disable-service-auth-codes"]
