# Appendix D: Annotated SOAP Message 

An annotated example of a SOAP message follows, which includes the
required security elements. The example is divided into numbered sections
using comment blocks with explanatory notes . In order to improve readability, 
some attributes that have URI values have been shortened.  These will be notated
using a preceding ellipse.  For example `ValueType="…#X509v3"` 

The example does not include any namespace declarations. The table below
lists the namespaces used in this example.

| Prefix   | Description                                                                                         | Namespace                                                                              |
|----------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| SOAP-ENV | SOAP Envelope                                                                                        | http://schemas.xmlsoap.org/soap/envelope/                                              |
| ds       | XML Digital Signature                                                                               | http://www.w3.org/2000/09/xmldsig#                                                     |
| wsse     | Web Service Security Extensions                                                                     | http://www.docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd  |
| wsu      | Web Services Security Utility                                                                       | http://www.docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd |
| xsd      | XML Schema                                                                                          | http://www.w3.org/2001/XMLSchema                                                       |
| msg      | An private namespace for specifying elements and attributes that are specific to ERCOT Web Services | TBD                                                                                    |

~~~
<!-- 
    1 - This section starts the SOAP envelope and the SOAP header
-->

<SOAP-ENV:Envelope>
    <SOAP-ENV:Header>

        <!-- 
            2 - This section starts the Web Services Security Extensions, which includes security tokens and the digital signature. 
            The first element in this section is the signer’s X.509 certificate, which is encoded in Base 64 binary. Note the 
            identification of this element (CertId-1776694). The ID is later used in Section 7 to reference this certificate. 
            Note that there is only one certificate in this message. The message verifier must ensure that the certificate 
            chains to a trusted root.
        -->

        <wsse:Security SOAP-ENV:mustUnderstand="1">
            <wsse:BinarySecurityToken    
                EncodingType="…#Base64Binary" 
                ValueType="…#X509v3" 
                wsu:Id="CertId-1776694">
                MIIDDDCCAfSgAwIBAgIQM6YEf7FVYx/tZyEXgVComTANBgkqhkiG9w0 DAVPQVNJUzEeMBwGA1UEAwwVT0FTSVMgSW50ZXJvcCBUZXN0IENBMB4DTE4MDMxOTIzNTk1OVowQjEOMAwGA1UECgwFT0FTSVMxIDAeBgNVBAsVGVzdCBDZXJ0MQ4wDAYDVQQDDAVBbGljZTCBnzANBgkqhkiG9w0BAQE9By1VYo0aHrkKCNT4DkIgPL/SgahbeKdGhrbu3K2XG7arfD9tqIBIKMyvq+mUnMpNcKnLXLOjkTmMCqDYbbkehJlXPnaWLzve+mW0pJdPxtf3r sZKT8DN5Kyz+EZsCAwEAAaOBkzCBkDAJBgNVHRMEAjAAMDMGA1UdHwQaW50ZXJvcC5iYnRlc3QubmV0L2NybC9jYS5jcmwwDgYDVR0PAQH/BAQ4l0TUHZ1QV3V2QtlLNDm+PoxiDAfBgNVHSMEGDAWgBTAnSj8wes1oR3 JTw==
            </wsse:BinarySecurityToken> 

                <!-- 
                    3 - This section starts the digital signature block of the SOAP message. The signature is computed using the SHA-1
                    hash algorithm with RSA encryption. 
                -->

                <ds:Signature>
                <ds:SignedInfo>
                    <ds:CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"/>
                    <ds:SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" /> 

                    <!-- 
                        4 - This section designates the first of two objects that are signed. This one points to the entire message
                        body (#id-1464350), which is specified in Section  The hashing algorithm is SHA-1.
                    -->

                    <ds:Reference URI="#id-1464350">
                        <ds:Transforms>
                            <ds:Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#" /> 
                        </ds:Transforms>
                        <ds:DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" /> 
                        <ds:DigestValue>
                            1JmC1C0FrlPB42xfFKolgaCew5k=
                        </ds:DigestValue> 
                    </ds:Reference>
                    
                    <!-- 
                        5 - This section designates the second of two objects that are signed. This one points to the reference to 
                        the certificate (#STRId-13498124), which is specified in Section 7
                    -->
                    <ds:Reference URI="#id-13498124">
                        <ds:Transforms>
                            <ds:Transform Algorithm="...xml-exc-c14n#">
                                <wsse:TransformationParameters>
                                    <ds:CanonicalizationMethod Algorithm="...xml-exc-c14n#"/> 
                                </wsse:TransformationParameters>
                             </ds:Transform>
                        </ds:Transforms>
                        <ds:DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" /> 
                        <ds:DigestValue>
                            sEaCJjrObpDVfM8zuabwQdBGKbY=
                        </ds:DigestValue>
                    </ds:Reference>
                </ds:SignedInfo>
                    
                <!-- 
                    6 - This section specifies the value of the signature. That is, the SHA-1 hash of references to Sections 7 and 8
                    and the encryption of this hash using the signer’s private key.
                -->

                <ds:SignatureValue>
                    H1b7jH2bHpbrzJXkFS0msdUYycDMH4n6m4oTRtbo4Yk35/JzGcuwUYZ3
                    AwPcnqmcP5ROshjJparaPGuvQhbFR7zCxet2aoawJFWgG8jIeuDZDE8y6n+kbBzxadF2tGN8/nH6IlKg0+onD09i81rPHDAa 2kstCclX2NDet1Rnmfs=
                </ds:SignatureValue> 

                <!-- 
                    7 - This section designates a reference to the signer’s certificate. In this case, the certificate is embedded 
                    in this SOAP message, and is referenced via the ID #CertId-1776694. This ID instructs the message verifier to 
                    get the certificate from Section 2 of this SOAP message. 
                -->
 
               <ds:KeyInfo>
                    <wsse:SecurityTokenReference wsu:Id="id-13498124">
                        <wsse:Reference URI="#CertId-1776694" ValueType="...#X509v3" /> 
                    </wsse:SecurityTokenReference>
                </ds:KeyInfo>
            </ds:Signature>
        </wsse:Security>
    </SOAP-ENV:Header>
    
    <!-- 
        8 - This section starts the SOAP message body. It is designated using ID id-1464350, which is referenced as a signed element 
        in Section 2. Note that the message body includes an element called ReplayDetection, which consists of a timestamp indicating 
        when the message was signed and a unique number (the nonce). These two elements help detect and prevent replay attacks. The 
        rest of the message body (i.e., the business transaction) is not shown.
    -->
    
    <SOAP-ENV:Body wsu:Id="id-1464350" >
        <msg:Message>
            <msg:Header>
                <msg:Verb>verb</msg:Verb>
                <msg:Noun>noun</msg:Noun>
                <msg:ReplayDetection>
                    <wsu:Created>
                        2006-11-29T20:05:55.022Z
                    </wsu:Created>
                    <wsse:Nonce EncodingType="#Base64Binary">
                        75753793-50c2-455b-a9b3-123cb26474e7
                    </wsse:Nonce>
                </msg:ReplayDetection>
                <msg:Revision>1</msg:Revision>
                <msg:Source>market participant ID</msg:Source>
            </msg:Header>
        </msg:Message>
    </SOAP-ENV:Body>
</SOAP-ENV:Envelope
~~~
