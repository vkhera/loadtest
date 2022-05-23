#!/bin/sh
# Inspired from https://github.com/hhcordero/docker-jmeter-client
# Basically runs jmeter, assuming the PATH is set to point to JMeter bin-dir (see Dockerfile)
#
# This script expects the standdard JMeter command parameters.
#

# Install jmeter plugins available on /plugins volume


# Execute JMeter command
EXTRA_ARGS=-Dlog4j2.formatMsgNoLookups=true
echo "jmeter ALL ARGS=${EXTRA_ARGS} $@"
jmeter -n -t "/LocalRestSvc-1.jmx" -l "/LocalRestSvc-1.jtl"

echo "END Running Jmeter on `date`"