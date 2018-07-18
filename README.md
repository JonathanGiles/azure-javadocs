# JavaDocs for Azure Java SDKs

![](https://i0.wp.com/jonathangiles.net/wp-content/uploads/2018/01/BIT_AND_MSFT_DOCS.png?zoom=2&resize=150%2C150 "Doc & Bit")

## Overview

The goal of this project was to build a single aggregate JavaDoc for all Azure Java APIs in an automated fashion. It was a victim of its success - each day generating a new JavaDoc output and slowly increasing the size of the repo as new JavaDoc overwrote old JavaDoc into the static hosting branch offered by GitHub. I [blogged about this issue](https://jonathangiles.net/triggering-azure-functions-with-java-when-a-storage-change-occurs/), and also about how I have resolved it.

In short: for people wanting to read the latest JavaDoc for all Azure Java SDKs, you can use the new https://java.ms/api URL to go to the new hosting location. This is also generated daily, and shouldn't run into the same issues encountered here.

I'm keeping this repo up to serve as a redirect, but also to preserve the code originally used to generate this output, for any interested parties in the future.
