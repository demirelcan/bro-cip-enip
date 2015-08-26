#
# @TEST-EXEC: bro -r $TRACES/enip/enip_connect_to_plc1_and_upload.pcapng > output
# @TEST-EXEC: btest-diff output
# @TEST-EXEC: cat output | awk '{print }' | sort | uniq | wc -l > covered
# @TEST-EXEC: cat ${DIST}/src/analyzer/protocol/enip/events.bif | grep "^event enip_" | wc -l > total
# @TEST-EXEC: echo `cat covered` of `cat total` events triggered by trace > coverage
# @TEST-EXEC: btest-diff coverage
#
