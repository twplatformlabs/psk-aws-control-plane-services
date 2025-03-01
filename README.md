<div align="center">
	<p>
	<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 /><br />
	<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/><br />
	<h2>psk-aws-control-plane-services</h2>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/psk-aws-control-plane-services"></a> <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
	</p>
</div>

### services

* metrics-server
* kube-state-metrics
* kubernetes-event-exporter

__Note: Normally there would be the complete set of observability collectors among the services. Starter Kits currently not providing example solution for this requirement.__  

### Maintainers

- Debug opentelemetry-collector deplpoyment. Current configuration deploys with honeycomb receiver however data is not being transmitted nor are there errors in the logs.  

**service upgrades**  

Chart versions as feature flags in environments folder.  
