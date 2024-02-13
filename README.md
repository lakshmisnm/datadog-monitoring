# datadog-monitoring
Datadog Monitoring as Code

Once I created the browser test steps in Datadog

I ra cmd to import the config in terraform -  terraform import <resource_name>.<test_name> <browsertestID>
In this case -> terraform import datadog_synthetics_test.browser_test ebn-akz-9be

Once its imported - update the config in main.tf - In this case update retry from 0 to 2
