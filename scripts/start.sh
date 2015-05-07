CONFIG_DIR=/elasticsearch/config

# Set the required login credentials.
if [[ -e /.firstrun ]]; then
  sed -i -e"s/^ES_USER/$ES_USERNAME/" $CONFIG_DIR/elasticsearch.yml
  sed -i -e"s/^ES_PASS/$ES_PASSWORD/" $CONFIG_DIR/elasticsearch.yml
  touch /.firstrun
fi


/elasticsearch/bin/elasticsearch

