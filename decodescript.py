# Python 2.7 decode script:
from M2Crypto import RSA, X509
from binascii import unhexlify
from sys import argv

path_to_crt = '/cert.key'
encoded_str = argv[1]

private_crt = RSA.load_key(path_to_crt)
decoded_str = private_crt.private_decrypt(unhexlify(encoded_str), RSA.pkcs1_padding)

print decoded_str
