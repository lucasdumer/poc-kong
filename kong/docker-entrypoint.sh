curl -X POST http://kong-poc-one:8001/upstreams \
  --data name=example_upstream

curl -X POST http://kong-poc-one:8001/upstreams/example_upstream/targets \
  --data target='service-go:8081'
curl -X POST http://kong-poc-one:8001/upstreams/example_upstream/targets \
  --data target='service-nodejs:8082'

curl -i -s -X POST http://kong-poc-one:8001/services \
  --data name=example_service \
  --data host=example_upstream \
  --data port=8000

curl -i -X POST http://kong-poc-one:8001/services/example_service/routes \
  --data 'paths[]=/' \
  --data name=example_route