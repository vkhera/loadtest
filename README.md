# loadtest
This repo hosts code that can be used to stand up a sample service and tools to load test the same

Service:
To start the service sample, download the code. The service is a spring-boot-rest code sample from https://www.baeldung.com/
It relies on JDK8 and maven. Run below command from spring-boot-rest folder.
mvn spring-boot:run
This will build and start the service.

DockerClient:
This part has the files to build docker image that acts as client to service, using jmeter to perform the load test.
The JMeter project name is LocalRestSvc-1.jmx
