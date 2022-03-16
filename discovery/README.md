# Discovery Service

We use [Netflix Eureka](http://cloud.spring.io/spring-cloud-netflix/single/spring-cloud-netflix.html#_service_discovery_eureka_clients) as a service registry.

It provides a REST API for service registration and querying.

A service registry is useful because it enables client-side load-balancing and decouples service providers from
consumers without the need for DNS. Each service has to register to the service registry. To be informed about the presence of a client, they have to send a heartbeat signal to the registry. Each client can query the service registry, which maintains a list of all available service instances.

After the client retrieves the list of available service instances, he uses a load balancing algorithm to select available instance. Clients also have an in-memory cache of Eureka registrations (so they do not have to go to the registry for every request to a service).

## Optional profiles

- **elk** - to enable ELK logging.
- **distributed-tracing** - to enable distributed tracing with Sleuth and Zipking.
- **docker** - used when the service is run with docker.
