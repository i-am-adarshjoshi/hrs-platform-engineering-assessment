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
