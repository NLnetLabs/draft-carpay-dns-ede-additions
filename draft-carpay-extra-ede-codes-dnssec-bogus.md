---
title: Extra Extended DNS Error codes for DNSSEC status bogus
abbrev: Extra DNSSEC EDE codes
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
    title: Extra needed Extended DNS Errors with DNSSEC Validation
    author:
    -
      name: Tom Carpay
      org: NLnet Labs
    -
      name: Willem Toorop
      org: NLnet Labs
    target: https://github.com/NLnetLabs/unbound/pull/604/

--- abstract

While implementing Extended DNS Errors in our DNSSEC validating resolver software Unbound, we encountered these specific situations regarding the DNSSEC bogus status where no Extended DNS Error were yet defined. This draft serves as a reference for the request of Extended DNS Error Codes in the IANA registry. 

--- middle

# Introduction

While implementing Extended DNS Errors {{!RFC8914}} in our DNSSEC validating resolver software Unbound {{UnboundPR}}, we encountered these specific situations regarding the DNSSEC bogus status where no Extended DNS Error were yet defined. This draft serves as a reference for the request of Extended DNS Error Codes in the IANA registry. 



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
 As this draft only seeks to add code points to the EDE registry, the security considerations are the same as in {{!RFC8914}}.

# IANA Considerations

This draft requests the assignment of a new EDE code values for the specified EDE
codes.

--- back
