---
title: Extra Extended DNS Error codes for DNSSEC status bogus
abbrev: Extra DNSSEC EDE codes
docname: draft-carpay-extra-ede-codes-dnssec-bogus
date: {DATE}

keyword: Internet-Draft

stand_alone: yes

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
  UNBOUNDPR:
    title: EDE for Unbound pull request
    author:
    -
      name: Tom Carpay
      org: NLnet Labs
    -
      name: Willem Toorop
      org: NLnet Labs
    target: https://github.com/NLnetLabs/unbound/pull/604/

--- middle

# Introduction

While implementing Extended DNS Errors ({{!RFC8914}}) in our DNSSEC validating resolver software Unbound ({{UNBOUNDPR}}), we encountered this specific situations regarding the DNSSEC bogus status where no Extended DNS Error were yet defined. 



## Extended DNS Error Code 26 - Signature Wrong Size

The resolver attempted to perform DNSSEC validation, but the signature is either smaller or larger than expected for the specified algorithm.

## Extended DNS Error Code 27 - Malformed Signer Name

The resolver attempted to perform DNSSEC validation, but the Signer's Name Field in the signature contains a malformed signer (d)name.

## Extended DNS Error Code 28 - Signer Name Out of zone

The resolver attempted to perform DNSSEC validation, but the Signer's Name Field in the signature does not contain the zone name of the covered RRset.

## Extended DNS Error Code 29 - Signature Label Count Wrong

The resolver attempted to perform DNSSEC validation, but the number of labels in the Signature Labels Field is incorrect.

## Extended DNS Error Code 30 - DNSSEC Insufficient NSEC Proof

The resolver attempted to perform DNSSEC validation, but the signed response does not have valid NSEC proof.

## Extended DNS Error Code 31 - DNSSEC Unknown Protocol

The resolver attempted to perform DNSSEC validation, but found a value not equal to 3 in the DNSKEY protocol number field as specified by RFC4034#section-2.1.2.


# IANA Considerations

This draft requests the assignment of a new EDE code values for the specified EDE
codes.

--- back