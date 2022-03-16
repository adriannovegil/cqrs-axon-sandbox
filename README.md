# CQRS Axon Sandbox

This project is inspired by [`e-shop`](https://github.com/hdimitrieski/e-shop) that is inspired by [`eShopOnContainers`](https://github.com/dotnet-architecture/eShopOnContainers) and it's built to demonstrate features of [Spring Cloud](https://spring.io/projects/spring-cloud) for implementing microservices architecture.

In this project you can find examples of:

- CQRS,
- Event Sourcing,
- Axon Framework,
- Kafka,
- MongoDB,
- ...

## Services

- [Config](infrastructure/config) - Centralized configuration service. You can access this service at http://localhost:8888. Credentials cfguser/cfgpassword.
- [Discovery](infrastructure/discovery) - Service registry that allows other services to find and communicate with each other. You can access this service at http://localhost:8761 and use admin/admin credentials.
- [Catalog Command Service](catalog-command) and
- [Catalog Query Service](catalog-query).

The services are implemented following the Domain Driven Design approach, [CQRS](https://martinfowler.com/bliki/CQRS.html) and [Event Sourcing](https://martinfowler.com/eaaDev/EventSourcing.html) implementation using [Axon](https://axoniq.io/).

We use MongoDB as an event store, and Kafka to distribute the events between the command and the query side.

The services are used to manage the products that are available in the shop. The catalog items are publicly available.

## Build the services

First build the services with the following command:

```
./mvnw clean install
```

## Run the infrastructural and business services

Run all infrastructural and service containers using the following command:

```
docker-compose build
docker-compose up
```

## References

- https://github.com/hdimitrieski/e-shop
- https://github.com/dotnet-architecture/eShopOnContainers

## Contributing

For a complete guide to contributing to the project, see the [Contribution Guide](CONTRIBUTING.md).

We welcome contributions of any kind including documentation, organization, tutorials, blog posts, bug reports, issues, feature requests, feature implementations, pull requests, answering questions on the forum, helping to manage issues, etc.

The project community and maintainers are very active and helpful, and the project benefits greatly from this activity.

### Reporting Issues

If you believe you have found a defect in the project or its documentation, use the repository issue tracker to report the problem to the project maintainers.

If you're not sure if it's a bug or not, start by asking in the discussion forum. When reporting the issue, please provide the version.

### Submitting Patches

The project welcomes all contributors and contributions regardless of skill or experience level.

If you are interested in helping with the project, we will help you with your contribution.

We want to create the best possible tool for our development teams and the best contribution experience for our developers, we have a set of guidelines which ensure that all contributions are acceptable.

The guidelines are not intended as a filter or barrier to participation. If you are unfamiliar with the contribution process, the team will help you and teach you how to bring your contribution in accordance with the guidelines.

For a complete guide to contributing, see the [Contribution Guide](CONTRIBUTING.md).

## Code of Conduct

See the [code-of-conduct.md](./code-of-conduct.md) file

## License

See the [LICENSE](./LICENSE) file
