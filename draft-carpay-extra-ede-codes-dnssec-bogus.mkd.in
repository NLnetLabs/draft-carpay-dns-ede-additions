---
title: Additional Extended DNS Error codes for DNSSEC
abbrev: Additional DNSSEC EDE codes
docname: @DOCNAME@
date: {DATE}

keyword: Internet-Draft

category: info
ipr: trust200902
keyword: Internet-Draft
stand_alone: yes
submissionType: independent

author:
 -
    ins: T. Carpay
    name: Tom Carpay
    org: NLnet Labs
    email: tom@nlnetlabs.nl
 -
    ins: W. Toorop
    name: Willem Toorop
    org: NLnet Labs
    email: willem@nlnetlabs.nl

informative:
  UnboundPR:
    title: Additional Extended DNS Errors with DNSSEC Validation
    author:
    -
      name: Tom Carpay
      org: NLnet Labs
    -
      name: Willem Toorop
      org: NLnet Labs
    target: https://github.com/NLnetLabs/unbound/pull/604/

--- abstract

This document serves as the reference for a request to the Internet Assigned Numbers Authority for entries to be added to the Extended DNS Error Codes registry on the Domain Name System (DNS) Parameters web page.

--- middle

# Introduction

Extended DNS Errors (EDE) {{!RFC8914}} are a mechanism to return additional information about the cause of DNS errors.
The more specific the cause of such errors can be indicated, the better the error conditions can be treated.

While implementing EDE in our DNSSEC validating resolver software Unbound {{UnboundPR}}, we encountered DNSSEC bogus error conditions for which no specific EDE INFO-CODEs are yet defined.
This document enumerates those conditions with the goal to be used as a reference for the request to add entries for those error conditions to the IANA Extended DNS Error Codes registry on the Domain Name System (DNS) Parameters web page.

# DNSSEC bogus error conditions

The encountered error conditions for which no EDE INFO-CODE was defined yet are defined in the following subsections.

## Extended DNS Error Code TBD - Signature Wrong Size

The resolver attempted to perform DNSSEC validation, but the signature is either smaller or larger than expected for the specified algorithm.

## Extended DNS Error Code TBD - Malformed Signer Name

The resolver attempted to perform DNSSEC validation, but the Signer's Name Field in the signature contains a malformed signer (d)name.

## Extended DNS Error Code TBD - Signer Name Out of zone

The resolver attempted to perform DNSSEC validation, but the Signer's Name Field in the signature does not contain the zone name of the covered RRset.

## Extended DNS Error Code TBD - Signature Label Count Wrong

The resolver attempted to perform DNSSEC validation, but the number of labels in the Signature Labels Field is incorrect.

## Extended DNS Error Code TBD - DNSSEC Insufficient NSEC Proof

The resolver attempted to perform DNSSEC validation, but the signed response does not have valid NSEC proof.

## Extended DNS Error Code TBD - DNSSEC Unknown Protocol

The resolver attempted to perform DNSSEC validation, but found a value not equal to 3 in the DNSKEY protocol number field as specified by {{!RFC4034, Section 2.1.2}}

#  Security Considerations

This document only adds new code points to the EDE registry.
No additional security considerations apply besides the ones for Extended DNS Errors in general as set out in {{!RFC8194}}.

# IANA Considerations

This document defines new entries in the "Extended DNS Error Codes" registry on the "Domain Name System (DNS) Parameters" web page:

| INFO-CODE | Purpose                        | Reference        |
|-----------|--------------------------------|------------------|
| TBD       | Signature Wrong Size           | \[this document] |
| TBD       | Malformed Signer Name          | \[this document] |
| TBD       | Signer Name Out of zone        | \[this document] |
| TBD       | Signature Label Count Wrong    | \[this document] |
| TBD       | DNSSEC Insufficient NSEC Proof | \[this document] |
| TBD       | DNSSEC Unknown Protocol        | \[this document] |

--- back
