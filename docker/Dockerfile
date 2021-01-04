FROM botpress/server:v12_15_1
LABEL maintainer="S. Valle"

# Add bluexolo bot data
ADD data/bots data/bots

# Use configured database
ADD data/storage data/storage

# Import global configuration files
ADD data/global data/global

CMD ["./bp"]