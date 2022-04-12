package com.eshop.catalog.shared.eventhandling;

public interface EventBus {

    void publish(IntegrationEvent event);
}
