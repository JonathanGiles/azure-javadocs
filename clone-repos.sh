#!/bin/sh

# Compile fine
git clone https://github.com/Azure/azure-functions-java-worker.git
git clone https://github.com/Azure/azure-service-bus-java.git
git clone https://github.com/Azure/azure-data-lake-store-java.git
git clone https://github.com/Azure/azure-event-hubs-java.git
git clone https://github.com/Azure/azure-iot-sdk-java.git

# Untested


# Repos that fail to compile
# git clone https://github.com/Azure/azure-keyvault-java.git
# git clone https://github.com/Azure/azure-libraries-for-java.git

# Repos with JavaDoc errors that fail build
#git clone https://github.com/Azure/azure-storage-java.git
#git clone https://github.com/Azure/azure-batch-sdk-for-java.git