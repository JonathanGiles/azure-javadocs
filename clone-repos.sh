#!/bin/sh

# Compile fine
git clone https://github.com/Azure/azure-functions-java-worker.git
git clone https://github.com/Azure/azure-service-bus-java.git
git clone https://github.com/Azure/azure-data-lake-store-java.git
git clone https://github.com/Azure/azure-event-hubs-java.git
git clone https://github.com/Azure/azure-keyvault-java.git
git clone https://github.com/Azure/azure-batch-sdk-for-java.git
git clone https://github.com/Azure/azure-storage-java.git

# Temporarily using forks that have all fixes applied
git clone https://github.com/JonathanGiles/azure-iot-sdk-java.git


# Fails to build under JDK 9


# Untested


# Repos that fail to compile
# git clone https://github.com/Azure/azure-libraries-for-java.git

# Repos with JavaDoc errors that fail build

# git clone https://github.com/Azure/azure-sdk-for-java.git
