# External Web Services (EWS)

This document describes the message structure machine to machine
interfaces for Market Participant applications that need to interact
with ERCOT Nodal Market systems. The intended audience of this document
is developers that will be integrating Market Participant applications
to the ERCOT Nodal systems through the use of the interfaces described
within this specification.

This documentation provides a general introduction to the services, 
specific details regarding the message structure, and the overall security
implementation.  This is followed by sections that are specific to each 
service support by EWS.  Additionally there are sections regarding 
Notification listeners.  The appendices provide XML Schemas, WSDLs and 
additional examples.

The interfaces and related interactions described by this document
define the externally-visible (black box view) perspective of the
services provided by this project. It is the intent of this
specification and interface architecture to shield Market Participants
from the details of systems integration internal to ERCOT.

## Purpose

The interfaces described by this document are intended to be used by
Market Participants for machine to machine integration. This document is
intended to provide all the details of the message structures and
technical interoperability standards required for the machine to machine
interface.

## Scope

The scope of this document is to describe web services provided for
integration by Market Participants from the perspective of external
integration. This document has program level scope as related to web
services that would be used by Market Participants for machine to
machine interaction with nodal applications as detailed in an agreed
list of interfaces to be managed by the Nodal project. The intent of
this design is to leverage the integration layer (IL) to expose web
services needed for external integration by Market Participants.

The following are specifically outside the scope of this document:

- The details of integration from the IL to internal ERCOT applications 
are outside the scope of this specification

- Inter Control Center Communications Protocol (ICCP) communications

- Interactions with application User Interfaces (UI)

- Access of information through ercot.com

- Usage of the Public API for historical public content.  Public API 
documentation is available at ...

## Definitions, Acronyms, and Abbreviations

| *Term/Acronym* | *Definition*                                                                                                                                                                   |
|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ADJ            | Adjustment                                                                                                                                                                     |
| AS             | Ancillary Services, includes spinning reserve, non-spinning reserve, responsive reserve and regulation                                                                         |
| award          | An award identifies the acceptance of a bid or offer.                                                                                                                          |
| BidSet         | A BidSet is an XML container type for a collection of bids, offers, trades and schedules as defined by the IEC Common Information Model                                        |
| CIM            | Common Information Model, an IEC standard                                                                                                                                      |
| CRR            | Congestion Revenue Rights, a system implemented at ERCOT                                                                                                                       |
| CSV            | A file format that uses values separated by commas                                                                                                                             |
| DAM            | Day Ahead Market                                                                                                                                                               |
| DRUC           | Day-Ahead Reliability Unit Commitment                                                                                                                                          |
| EMS            | Energy Management System, a system implemented at ERCOT                                                                                                                        |
| FIP            | Fuel Index Price                                                                                                                                                               |
| FOP            | Fuel Oil Price                                                                                                                                                                 |
| FTP            | File Transfer Protocol                                                                                                                                                         |
| GUID           | Globally Unique Identifier. GUIDs are usually implemented as random 128 bit numbers that are usually represented as a string of hexadecimal digits.                            |
| HASL           | High ancillary services limit                                                                                                                                                  |
| HDL            | High dispatch limit                                                                                                                                                            |
| HEL            | High emergency limit                                                                                                                                                           |
| HRUC           | Hour-Ahead Reliability Unit Commitment                                                                                                                                         |
| HSL            | High sustained limit                                                                                                                                                           |
| IEC            | International Electrotechnical Commission                                                                                                                                      |
| LASL           | Low ancillary services limit                                                                                                                                                   |
| LDL            | Low dispatch limit                                                                                                                                                             |
| LEL            | Low emergency limit                                                                                                                                                            |
| LMP            | Location marginal price                                                                                                                                                        |
| LSL            | Low sustained limit                                                                                                                                                            |
| MCPC           | Market clearing price for capacity                                                                                                                                             |
| MIS            | Market Information System, an umbrella for the various interfaces provided to Market Participants by ERCOT                                                                     |
| MMS            | Market Management System, a system implemented at ERCOT                                                                                                                        |
| MP             | Market Participant                                                                                                                                                             |
| MW             | Megawatt, a measure of power                                                                                                                                                   |
| MWh            | Megawatt hour, a measure of energy                                                                                                                                             |
| NMMS           | Network Model Management System, a system implemented at ERCOT                                                                                                                 |
| NOMCR          | Network operating model change request                                                                                                                                         |
| Non-Spin       | Non-spinning reserve                                                                                                                                                           |
| OASIS          | Organization for the Advancement of Structured Information Systems                                                                                                             |
| Operating Date | Synonymous with Trade Date                                                                                                                                                     |
| PMCR           | Planning Model Change Request                                                                                                                                                  |
| POC            | Proof Of Concept                                                                                                                                                               |
| QSE            | Qualified Scheduling Entity. This is a type of Market Participant. Each QSE is identified by a certificate. A QSE is identified by a DUNS number, ‘long name’ and ‘short name’ |
| RDF            | Resource Descriptor format. An XML format used by NMMS for model exchanges using IEC 61970-501.                                                                                |
| Reg-Down       | Regulation down                                                                                                                                                                |
| Reg-Up         | Regulation up                                                                                                                                                                  |
| RRS            | Responsive reserve service                                                                                                                                                     |
| RTM            | Real-Time Market                                                                                                                                                               |
| SAMR           | Special Action Model Request                                                                                                                                                   |
| sink           | Sink settlement point                                                                                                                                                          |
| SOAP           | Simple Object Access Protocol                                                                                                                                                  |
| SoSA           | System of Systems Architecture                                                                                                                                                 |
| source         | Within a bid, offer, schedule, trade or award this refers to the source settlement point. Within a message header, this refers to the ID of the market participant.            |
| SP             | Settlement Point                                                                                                                                                               |
| SPP            | Settlement Point Price                                                                                                                                                         |
| TP             | Transmission Provider                                                                                                                                                          |
| Trading Date   | Synonymous with Operating Date. Represented in XML using the ‘tradingDate’ tag. This is based on Texas prevailing time.                                                        |
| UTC            | Universal Coordinated Time, an international standard                                                                                                                          |
| WS             | Web Services. There are many web service standards that are commonly prefixed by ‘WS’.                                                                                         |
| WSDL           | Web Services Definition Language                                                                                                                                               |
| XML            | eXtensible Markup Language                                                                                                                                                     |
| XSD            | XML Schema, used to define the structure of XML documents                                                                                                                      |
| XSL            | XML StyleSheet Language                                                                                                                                                        |
| Z              | Zulu, an indicator for the use of GMT or UTC time                                                                                                                              |

## References

| Artifact                                          | Definition                                                                                                                   |
|---------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| External Interfaces Conceptual Design             | Conceptual design for external interfaces using web services                                                                 |
| External Interfaces Security Design Specification | Detailed security design for external interfaces. This is a companion document to the External Interfaces Conceptual design. |
| OASIS WS-Notifications                            | OASIS Web Services Base Notification standard                                                                                |
| OASIS WS-Security                                 | OASIS Web Services Security                                                                                                  |
| XSDs                                              | Specific message structure and element details.                                                                              |

Additional references to related standards are described in section 1.6.

## Program-level Standards

In general, the design described by this document will leverage web
services and related security standards as defined by the World-Wide Web
Consortium (W3C) and OASIS. Program-level standards include those
related to security, as well as basic web service standards including:

- XML

- XML Schema

- XPath

- XSL

- SOAP

- Web Services

- WSDL

- RDF

These are described in the companion security design document. W3C
standards can be freely accessed from <http://www.w3.org>.

Another key program standard is the IEC Common Information Model (CIM),
as defined by IEC 61970-301. This is used to define models used by
ERCOT, which are exchanged using IEC 61970-501. It will also be
leveraged by this design for the definition of messages used for
interfaces. There is also a standard for message structures defined by
IEC 61968-1. There standards can be purchased from the IEC web site at
<http://www.iec.ch>. Materials related to IEC standards, including the
CIM model it self can be freely obtained from the UCA International
Users Group SharePoint at <http://sharepoint.ucausers.group.org/CIM>.

There are several key Internet Engineering Task Force references. These
include:

- Internet Engineering Task Force RFC 2828: Internet Security Glossary

- Internet Engineering Task Force RFC 2119: Key words to indicate RFC
  requirement levels

- Internet Engineering Task Force RFC 2246: Transport Layer Security
  (TLS)

- Internet Engineering Task Force RFC 3275: XML Digital Signature and
  Processing

IETF documents can be freely obtained from <http://www.ietf.org>.

An ERCOT variation of the OASIS WS-Base Notification standard is used to
define the mechanism for issuance of asynchronous notification messages
to Market Participants. Given the application of WS-Notifications for
Nodal, only a subset of the capabilities of WS-Notifications is
required. OASIS standards being leveraged include:

- Web Services Notifications (WS-Notifications)

- Web Services Security (WS-Security)

- Web Services Security X.509 Token Profile

- Web Services Security Username Token Profile

OASIS standards can be freely obtained from <http://www.oasis-open.org>.

The definition of timestamps is specified by ISO-8601, with the
exception that timestamps of 24:00:00 are not used for compatibility
reasons. This is partly a consequence of the XML Schema definition for
‘dateTime’, where hour 24 is not explicitly allowed. There are some
implementations of timestamps within software products that do not
correctly handle timestamps of 24:00:00.

ISO standards can be purchased online from a variety of sources
including ANSI, at <http://www.ansi.org>. Descriptions of ISO-8601 can
be freely obtained from other sources including Wikipedia

