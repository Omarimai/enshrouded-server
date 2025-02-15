# Base Image
FROM sknnr/enshrouded-dedicated-server:latest

# Set environment variables
ENV SERVER_NAME="Enshrouded Containerized Server" \
    SERVER_SLOTS=16 \
    SERVER_PASSWORD="ChangeThisPlease" \
    GAME_PORT=15636 \
    QUERY_PORT=15637

# Expose necessary ports
EXPOSE 15636/udp
EXPOSE 15637/udp

# Set working directory
WORKDIR /home/steam/enshrouded

# Default command to run the server
CMD ["./start-server.sh"]
