# Observability

This platform includes a centralized observability setup to monitor applications and infrastructure.

Telemetry data is collected using OpenTelemetry and exported to New Relic where dashboards and alerts can be configured.

## Data Collected

The following telemetry data is collected:

* Metrics such as CPU usage and memory utilization
* Application and system logs
* Distributed traces showing request flows between services

## Monitoring Architecture

Applications running in the Kubernetes cluster send telemetry data using OpenTelemetry.

The OpenTelemetry Collector receives the telemetry data and exports it to New Relic.

Example flow:

Application → OpenTelemetry Collector → New Relic → Dashboards & Alerts

## Key Metrics

Some important metrics monitored in the platform include:

* CPU and memory usage
* Pod health and restart count
* Request latency
* Error rate

## Tenant Monitoring

Since the platform supports multiple teams, monitoring data can be filtered by Kubernetes namespace so that teams can observe their own workloads.


## Service Level Indicators (SLIs)

The platform monitors key reliability metrics to understand service health.

Important SLIs include:

* API availability
* Request latency
* Error rate
* CPU and memory utilization
* Pod restart counts

These metrics are collected through OpenTelemetry and exported to New Relic for analysis.

## Service Level Objectives (SLOs)

The platform defines reliability targets based on the SLIs.

Example SLOs:

* API availability: 99.9% monthly uptime
* Request latency: 95% of requests complete within 200ms
* Error rate: less than 1% of total requests
* Infrastructure health: node CPU utilization should remain below 80%

These objectives help ensure a consistent and reliable platform for teams deploying services.

## Service Level Agreements (SLAs)

SLAs define commitments to internal teams or customers based on the SLO targets.

Example SLA:

* The platform guarantees 99.9% service availability per month.

If the SLA is violated, incident response procedures are triggered and service credits or internal escalation processes may apply.
