# JavaDocs for Azure Java SDKs

[Read the generated JavaDocs for all valid Java Azure SDKs now](https://jonathangiles.github.io/azure-javadocs/index.html?overview-summary.html).

[![Build Status](https://travis-ci.org/JonathanGiles/azure-javadocs.svg?branch=master)](https://travis-ci.org/JonathanGiles/azure-javadocs)

## Overview

This project explores the possibility of building a single, automated JavaDoc for all Azure Java APIs. This project aims to reach JDK 9 build compliance for both building (using `mvn clean package`) and generating Javadoc (using `mvn javadoc:javadoc`). This does not mean that the SDKs are using best practices or the latest JDK 8 and 9 features, simply that they are buildable and able to generate documentation.

When a project achieves the ability to generate JDK 9 documentation (without the lint checking disabled), it is added to the clone-repos.sh and pom.xml files in this repo, so that it is included in the daily build of JavaDocs. The latest daily build of all compliant JavaDoc for Azure Java APIs is [available online](https://jonathangiles.github.io/azure-javadocs/index.html?overview-summary.html). 

## Build Status of SDKs

| Project                                                                               | Builds on JDK 9       | JavaDoc available in JDK 9        | Comments                                                                                                                                                |
|-------------------------------------------------------------------------------------  |-------------------    |-----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------    |
| [azure-batch-sdk-for-java](https://github.com/Azure/azure-batch-sdk-for-java)         | Success               | Success                           |                                                                                                                                                         |
| [azure-functions-java-worker](https://github.com/Azure/azure-functions-java-worker)   | Success               | Success                           |                                                                                                                                                         |
| [azure-data-lake-store-java](https://github.com/Azure/azure-data-lake-store-java)     | Unit test failure     | Success                           |                                                                                                                                                         |
| [azure-event-hubs-java](https://github.com/Azure/azure-event-hubs-java)               | Unit test failure     | Missing snapshot dependencies     | [Issue filed](https://github.com/Azure/azure-event-hubs-java/issues/221)                                                                                |
| [azure-keyvault-java](https://github.com/Azure/azure-keyvault-java)                   | Unit test failure     | Success                           | [Issue regarding running tests](https://github.com/Azure/azure-keyvault-java/issues/18)<br/>Email sent to engineering - pending review                  |
| [azure-libraries-for-java](https://github.com/Azure/azure-libraries-for-java)         | Success (see comments)| Missing snapshot dependencies     | Requires running `mvn jetty:run` in a [separate terminal before starting the unit tests](https://github.com/Azure/azure-libraries-for-java/issues/126)  |
| [azure-iot-sdk-java](https://github.com/Azure/azure-iot-sdk-java)                     | Unit test failure     | Success                           | Unit test failures - unique to jdk 9 as they all pass under jdk 8.                                                                                      |
| [azure-service-bus-java](https://github.com/Azure/azure-service-bus-java)             | Unit test failure     | Success                           |                                                                                                                                                         |
| [azure-sdk-for-java](https://github.com/Azure/azure-sdk-for-java)                     | Unit test failure     | JavaDoc lint issues               | [PR to fix some of the javadocs](https://github.com/Azure/azure-sdk-for-java/pull/2002)<br/>Discussion ongoing in PR                                    |
| [azure-storage-java](https://github.com/Azure/azure-storage-java)                     | Unit test failure     | JavaDoc lint issues               | [PR to fix most javadocs](https://github.com/Azure/azure-storage-java/pull/244)<br/>Email sent to engineering to prompt review / merge                  |
