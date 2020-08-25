# Container image that runs your code
FROM norionomura/swiftlint:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

LABEL version="0.1.0"
LABEL repository="https://github.com/codingmanu/swiftlint-action"
