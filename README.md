# JavaDocs for Azure Java SDKs

![](https://i0.wp.com/jonathangiles.net/wp-content/uploads/2018/01/BIT_AND_MSFT_DOCS.png?zoom=2&resize=150%2C150 "Doc & Bit")


## Links
**Read latest generated JavaDocs online (built daily):** [Here](https://jonathangiles.github.io/azure-javadocs/index.html?overview-summary.html)

**Download latest generated JavaDoc jar file (built daily):** [Here](https://github.com/JonathanGiles/azure-javadocs/raw/gh-pages/azure-javadocs-0.0.1-SNAPSHOT-javadoc.jar)

**Current build status:** [![Build Status](https://travis-ci.org/JonathanGiles/azure-javadocs.svg?branch=master)](https://travis-ci.org/JonathanGiles/azure-javadocs)

## Overview

This project focuses on two responsibilities: 

1. Enabling the build of a single, automated JavaDoc for all Azure Java APIs.
2. Tracking the ability for each Azure SDK to compile under JDK 9. This project aims to reach JDK 9 build compliance for both building (using `mvn clean package`) and generating Javadoc (using `mvn javadoc:javadoc`). This does not mean that the SDKs are using best practices or the latest JDK 8 and 9 features, simply that they are buildable and able to generate documentation.

When a project achieves the ability to generate JDK 9 documentation (without any lint checking disabled), it is added to the clone-repos.sh and pom.xml files in this repo, so that it is included in the daily build of JavaDocs. The latest daily build of all compliant JavaDoc for Azure Java APIs is [available online](https://jonathangiles.github.io/azure-javadocs/index.html?overview-summary.html). 

## Build Status of SDKs

| Project                                                                               | Builds on JDK 9                                                                 | JavaDoc available in JDK 9                                                                                              | Comments                                                                                                                                                                           |
|-------------------------------------------------------------------------------------  |-----------------------------------------------------------------------------    |-------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    |
| [azure-batch-sdk-for-java](https://github.com/Azure/azure-batch-sdk-for-java)         | Success                                                                         | Success                                                                                                                 |                                                                                                                                                                                    |
| [azure-functions-java-worker](https://github.com/Azure/azure-functions-java-worker)   | Success                                                                         | Success                                                                                                                 |                                                                                                                                                                                    |
| [azure-data-lake-store-java](https://github.com/Azure/azure-data-lake-store-java)     | Unit test failure                                                               | Success                                                                                                                 |                                                                                                                                                                                    |
| [azure-event-hubs-java](https://github.com/Azure/azure-event-hubs-java)               | Success                                                                         | Success when doing `javadoc:aggregate`, but need to fix missing snapshot dependencies                                   | [Issue filed for dependency issue](https://github.com/Azure/azure-event-hubs-java/issues/253)                                                                                      |
| [azure-keyvault-java](https://github.com/Azure/azure-keyvault-java)                   | [Unit test failure](https://github.com/Azure/azure-keyvault-java/issues/18)     | Success                                                                                                                 | [Issue regarding running tests](https://github.com/Azure/azure-keyvault-java/issues/18)<br/>Email sent to engineering - pending review                                             |
| [azure-libraries-for-java](https://github.com/Azure/azure-libraries-for-java)         | Success (see comments)                                                          | [Missing snapshot dependencies](https://github.com/Azure/azure-libraries-for-java/issues/171)                           | Requires running `mvn jetty:run` in a [separate terminal before starting the unit tests](https://github.com/Azure/azure-libraries-for-java/issues/126)                             |
| [azure-iot-sdk-java](https://github.com/Azure/azure-iot-sdk-java)                     | Unit test failure                                                               | Success                                                                                                                 | Unit test failures - unique to jdk 9 as they all pass under jdk 8.                                                                                                                 |
| [azure-service-bus-java](https://github.com/Azure/azure-service-bus-java)             | Unit test failure                                                               | Success                                                                                                                 |                                                                                                                                                                                    |
| [azure-sdk-for-java](https://github.com/Azure/azure-sdk-for-java)                     | Unit test failure                                                               | Failure due to JavaDoc lint issues                                                                                      | [PR raised and closed](https://github.com/Azure/azure-sdk-for-java/pull/2002), this project will not be part of the combined JavaDocs at present                                   |
| [azure-storage-java](https://github.com/Azure/azure-storage-java)                     | Unit test failure                                                               | Success                                                                                                                 |                                                                                                                                                                                    |
