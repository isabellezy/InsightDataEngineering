#!/bin/bash

cd $(dirname $0)
mkdir -p bin
javac -d bin -classpath JUnitJar/org.junit.jupiter.api_5.6.0.v20200203-2009.jar:JUnitJar/org.apiguardian_1.1.0.v20190826-0900.jar ./src/*.java
java -jar JUnitJar/junit-platform-console-standalone-1.6.2.jar --classpath bin --scan-class-path