package com.eshop.catalog.shared.eventhandling;

public interface IntegrationEventHandler<T> {

    void handle(T event);
}
