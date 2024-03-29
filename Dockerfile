# Use the official Go image as a builder
FROM golang:1.17 AS builder

# Set the current working directory inside the container
WORKDIR /app

# Copy go modules definition and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go app
RUN go build -o authentik ./cmd/authentik

# Use a minimal base image to package the final executable
FROM gcr.io/distroless/base-debian10

# Copy the binary from the builder stage
COPY --from=builder /app/authentik /

# Command to run the executable
CMD ["/authentik"]
