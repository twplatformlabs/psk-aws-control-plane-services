<div align="center">
	<p>
	<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 /><br />
	<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/><br />
	<h2>psk-aws-control-plane-services</h2>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/psk-aws-control-plane-services"></a> <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
	</p>
</div>

### current services

* metrics-server
* kube-state-metrics
* kubernetes-event-exporter

### Maintainers

**TODO**  

- Debug opentelemetry-collector deplpoyment. Current configuration deploys with honeycomb receiver however data is not being transmitted nor are there errors in the logs.  

Services to add:  
- external-secrets operator (for cluster admin usage)
- observability solution (TBD)
- jaeger option for tracing data
- kspan, to include kubernetes events in tracing data
- pixie
- flagger
- kubecost

- Observability solution implementation for pipeline managed services.  

**service upgrades**  

Update the deployment version in the environments json and run the release pipeline.  
