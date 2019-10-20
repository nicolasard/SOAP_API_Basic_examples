#!/bin/sh

# Please it with your parameters, the SOAP request will be taken from the file request.xml, you can change it as you want.

echo "Curl example to make requet to the IPG service"

ServerCertificate="your-certificate.pem"

PrivateKey="your-private-key.key"
PrivateKeyPassword="theykey"

#Merchant user and password
UserID="your-user"
UserIDPassword="your-password"

URI="https://test.ipg-online.com/ipgapi/services"

curl -v  -H "Content-Type: text/xml" -k  --cert $ServerCertificate --key $PrivateKey --pass $PrivateKeyPassword -u $UserID:$UserIDPassword --url $URI -d @request.xml --trace-ascii "trace.log" -o "response.xml"

