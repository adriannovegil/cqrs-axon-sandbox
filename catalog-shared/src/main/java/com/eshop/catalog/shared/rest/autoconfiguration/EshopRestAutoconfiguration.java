package com.eshop.catalog.shared.rest.autoconfiguration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import com.eshop.catalog.shared.rest.config.GlobalConfiguration;

@Configuration
@Import(GlobalConfiguration.class)
public class EshopRestAutoconfiguration {
}
