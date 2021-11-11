docker run -p 9200:9200 -p 5601:5601 -v $(pwd)/logs:/logs -v $(pwd)/credentials.cfg:/override.cfg -t grimoirelab/full
