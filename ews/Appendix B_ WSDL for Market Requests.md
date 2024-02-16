# Appendix B: WSDL for Market Requests

This WSDL uses a set of operations for servicing all market requests,
related to bidding information requests and alert acknowledgements.

~~~
<?xml version = "1.0" encoding = "UTF-8"?>
<wsdl:definitions attributeFormDefault="unqualified" elementFormDefault="qualified"
    targetNamespace="http://www.ercot.com/wsdl/2007-05/nodal/ewsAbstract"
    xmlns:ns="http://www.ercot.com/wsdl/2007-05/nodal/ewsAbstract"
    xmlns:ns2="http://www.ercot.com/schema/2007-05/nodal/ews"
    xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <wsdl:import location="Message.xsd" namespace="http://www.ercot.com/schema/2007-05/nodal/ews"/>
    <wsdl:types>
        <xsd:schema targetNamespace="http://www.ercot.com/wsdl/2007-05/nodal/ewsAbstract">
            <xsd:include schemaLocation="Message.xsd"/>
        </xsd:schema>
    </wsdl:types>
    <wsdl:message name="RequestMessage">
        <wsdl:part element="ns2:RequestMessage" name="Message"/>
    </wsdl:message>
    <wsdl:message name="ResponseMessage">
        <wsdl:part element="ns2:ResponseMessage" name="Message"/>
    </wsdl:message>
    <wsdl:message name="FaultMessage">
        <wsdl:part element="ns2:FaultMessage" name="part1"/>
    </wsdl:message>
    <wsdl:portType name="Operations">
        <wsdl:operation name="MarketTransactions">
            <wsdl:input message="ns:RequestMessage"/>
            <wsdl:output message="ns:ResponseMessage"/>
            <wsdl:fault message="ns:FaultMessage" name="fault1"/>
        </wsdl:operation>
        <wsdl:operation name="MarketInfo">
            <wsdl:input message="ns:Request"/>
            <wsdl:output message="ns:Response"/>
            <wsdl:fault message="ns:FaultMessage" name="fault1"/>
        </wsdl:operation>
        <wsdl:operation name="Alerts">
            <wsdl:input message="ns:Request"/>
            <wsdl:output message="ns:Response"/>
            <wsdl:fault message="ns:FaultMessage" name="fault1"/>
        </wsdl:operation>
    </wsdl:portType>
    <wsdl:binding name="NodalSOAP" type="ns:Operations">
        <soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
        <wsdl:operation name="MarketTransactions">
            <soap:operation soapAction="http://www.ercot.com/Nodal/MarketTransactions"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
            <wsdl:fault name="fault1">
                <soap:body use="literal"/>
            </wsdl:fault>
        </wsdl:operation>
        <wsdl:operation name="MarketInfo">
            <soap:operation soapAction="http://www.ercot.com/Nodal/MarketInfo"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
            <wsdl:fault name="fault1">
                <soap:body use="literal"/>
            </wsdl:fault>
        </wsdl:operation>
        <wsdl:operation name="Alerts">
            <soap:operation soapAction="http://www.ercot.com/Nodal/Alerts"/>
            <wsdl:input>
                <soap:body use="literal"/>
            </wsdl:input>
            <wsdl:output>
                <soap:body use="literal"/>
            </wsdl:output>
            <wsdl:fault name="fault1">
                <soap:body use="literal"/>
            </wsdl:fault>
        </wsdl:operation>
    </wsdl:binding>
    <wsdl:service name="Nodal">
        <wsdl:port binding="ns:NodalSOAP" name="NodalSOAP">
            <soap:address location="http://www.ercot.com/Nodal/"/>
        </wsdl:port>
    </wsdl:service>
</wsdl:definitions>
~~~
