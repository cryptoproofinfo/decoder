# Set environment variables
`CERT_PATH=/absolute/path/to/private.cert`

`STRING_TO_DECODE='encryptedString'`

# Decode encrypted string
`docker run --rm -v $CERT_PATH:/cert.key:ro cryptoproofinfo/decoder $STRING_TO_DECODE`
