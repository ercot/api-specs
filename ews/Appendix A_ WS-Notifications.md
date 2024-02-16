#  Appendix A: WS-Notifications

The OASIS WS-Notifications specification can be obtained from
<http://www.oasis-open.org>. The Notification interface to be used by
ERCOT involves several modification to the WS-Notification standard.
These include:

- The use of an Acknowledge message in order to improve reliability

- Reduction of the interface into a single XSD and a simplified WSDL

The key portions of WS-Notifications that are relevant to this
specification are provided here for convenience. The following is the
subset of the XML Schema for WS-Notifications that are relevant to
this design.

~~~
<?xml version="1.0" encoding="UTF-8"?>
<!-- edited with XMLSpy v2007 sp2 (http://www.altova.com) by Scott Neumann (UISOL) -->
<!-- 
    This Schema represents a revision to the OASIS WS-Notification standard for use by 
    ERCOT Market participants. This revision is intended to:
    
    1. Reduce complexity by eliminating unused interfaces and references to external XSDs
    2. Improve reliability through the addition of a positive acknowledgement message after
    receipt of a notification message
    
    Copyright (C) OASIS Open (2004-2006). All Rights Reserved.
    
    This document and translations of it may be copied and furnished to others, and derivative works that comment on or otherwise explain it or assist in its implementation may be prepared, copied, published and distributed, in whole or in part, without restriction of any kind, provided that the above copyright notice and this paragraph are included on all such copies and derivative works. However, this document itself may not be modified in any way, such as by removing the copyright notice or references to OASIS, except as needed for the purpose of developing OASIS specifications, in which case the procedures for copyrights defined in the OASIS Intellectual Property Rights document must be followed, or as required to translate it into languages other than English. 
-->

<xsd:schema xmlns:wsnt="http://www.ercot.com/schema/2007-06/nodal/notification" xmlns:xsd="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.ercot.com/schema/2007-06/nodal/notification" elementFormDefault="qualified" attributeFormDefault="unqualified">
    <!-- ================== Message Helper Types  ===================== -->
    <xsd:complexType name="NotificationMessageHolderType">
        <xsd:sequence>
            <xsd:element name="Message">
                <xsd:complexType>
                    <xsd:sequence>
                        <xsd:any namespace="##any" 
                            processContents="lax"/>
                    </xsd:sequence>
                </xsd:complexType>
            </xsd:element>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:element name="NotificationMessage" 
        type="wsnt:NotificationMessageHolderType"/>
    <!-- ========== Message Types for NotificationConsumer  =========== -->
    <xsd:element name="Notify">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element ref="wsnt:NotificationMessage" 
                    maxOccurs="unbounded"/>
                <xsd:any namespace="##other" processContents="lax" 
                    minOccurs="0" maxOccurs="unbounded"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="Acknowledge">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="ReplyCode" type="xsd:string" 
                    minOccurs="0"/>
                <xsd:element name="Timestamp" type="xsd:dateTime" 
                    minOccurs="0"/>
                <xsd:any namespace="##other" processContents="lax" 
                    minOccurs="0" maxOccurs="unbounded"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="Fault">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="FaultCode" type="xsd:string" 
                    minOccurs="0"/>
                <xsd:element name="Timestamp" type="xsd:dateTime" 
                    minOccurs="0"/>
                <xsd:any namespace="##other" processContents="lax" 
                    minOccurs="0" maxOccurs="unbounded"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
</xsd:schema>
~~~

The following WSDL represents the portion of WS-Notifications that is
used for the receipt of Notification messages.

~~~
<?xml version="1.0" encoding="utf-8"?>
<!-- 
    This Schema represents a revision to the OASIS WS-Notification standard for use by 
    ERCOT Market participants. This revision is intended to:
    
    1. Reduce complexity by eliminating unused interfaces and references to external XSDs
    2. Improve reliability through the addition of a positive acknowledgement message after
    receipt of a notification message
    
    Copyright (C) OASIS Open (2004-2006). All Rights Reserved.
    
    This document and translations of it may be copied and furnished to others, and derivative works that comment on or otherwise explain it or assist in its implementation may be prepared, copied, published and distributed, in whole or in part, without restriction of any kind, provided that the above copyright notice and this paragraph are included on all such copies and derivative works. However, this document itself may not be modified in any way, such as by removing the copyright notice or references to OASIS, except as needed for the purpose of developing OASIS specifications, in which case the procedures for copyrights defined in the OASIS Intellectual Property Rights document must be followed, or as required to translate it into languages other than English. 
    
-->
<wsdl:definitions name="WS-BaseNotification"
    targetNamespace="http://www.ercot.com/wsdl/2007-06/nodal/notification"
    xmlns:wsntw="http://www.ercot.com/wsdl/2007-06/nodal/notification"
    xmlns:wsnt="http://www.ercot.com/schema/2007-06/nodal/notification"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
    
    
    <!-- ===================== Types Definitions ====================== -->
    <wsdl:types>
        <xsd:schema>
            <xsd:import
                namespace="http://www.ercot.com/schema/2007-06/nodal/notification" 
                schemaLocation="Notification.xsd"/>
        </xsd:schema>
    </wsdl:types>
    
    <!-- ================ NotificationConsumer::Notify ================ 
        Notify
        NotificationMessage
        (SubscriptionReference, TopicExpression, ProducerReference,
        Message)*
        returns: Ack
    -->
    
    <wsdl:message name="Notify">
        <wsdl:part name="Notify" element="wsnt:Notify"/>
    </wsdl:message>
    <wsdl:message name="Acknowledge">
        <wsdl:part name="Acknowledge" element="wsnt:Acknowledge"/>
    </wsdl:message>
    <wsdl:message name="Fault">
        <wsdl:part name="Fault" element="wsnt:Fault"/>
    </wsdl:message>
    
    
    <!-- ========= NotificationConsumer PortType Definition =========== -->
    <wsdl:portType name="NotificationConsumer">
        <wsdl:operation name="Notify">
            <wsdl:input message="wsntw:Notify" />
            <wsdl:output message="wsntw:Acknowledge" />
            <wsdl:fault message="wsntw:Fault" name="fault1"/>
        </wsdl:operation>
    </wsdl:portType>
    
</wsdl:definitions>
