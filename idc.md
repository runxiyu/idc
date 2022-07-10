%%%
title = "Internet Delay Chat Protocol"
abbrev = "Internet Delay Chat Protocol"
area = "TBD"
workgroup = "TBD"
submissiontype = "independent"
ipr = "none"
keyword = ["chat", "protocol"]
#updates = [ <++> ]
#date = 2003-04-01T00:00:00Z

[seriesInfo]
name = "Internet-Draft"
value = "internet-delay-chat"
stream = "independent"
status = "informational"

[[author]]
initials = "A."
surname = "Yu"
fullname = "Andrew Yu"
#role = "author"
organization = "YK Pao School"
  [author.address]
  email = "andrew@andrewyu.org"
  uri = "https://www.andrewyu.org/"
%%%

.# Abstract

The Internet Delay Chat protocol is a simple multiuser federated chat protocol.

.# Status of This Memo

Internet Delay Chat is still a draft.  It is subject to change rapidly during development of the reference implementation.
Distribution of this memo is unlimited.


{mainmatter}

# Introduction

The IDC (Internet Delay Chat) protocol is a simple binary protocol that allows for federated teleconferencing.

(List concepts in subsections.)

# The IDC Protocol

## Overview

The protocol as described herein is for use with both server to server and client to server connections.  There are, however, restrictions on both types of connections that the other may not have, as these connections have inherently different subjects.

## Messages

Servers and clients send each other messages which usually generate a reply.  If the message contains a valid command, as described in later sections, the client SHOULD expect a reply as specified.

Each IDC message consists of two main parts: the command, and the command parameters.

The protocol messages are extracted from a contiguous stream of octets.  When a command sequence is followed by the correct number of arguments for the command, the message ends, and the very next byte is treated as the next command.

```
<message>      ::= <command> [ <params> ]
<command>      ::= <octet> { <octet> }
<params>       ::= <paramlenspec> <data> [ <params> ]
<data>         ::= <Any sequence of octets>
<paramlenspec> ::= <A base-128 unsigned integer, where the first
                    bit of each octet indicates that the next octet
                    is still a legnth specifier (1) or is data (0),
                    and the last seven bits indicate one digit
                    in base-128.>
```

Note that the NUL (00) octet is not treated specially and is valid data in IDC.


# Conclusion

Bruh

# Security Considerations

Bruh

{backmatter}

{numbered="false"}
# Acknowledgements

Haxy hax


<!--
<reference anchor='<++>' target='<++>'>
    <front>
        <title><++></title>
        <author initials='<++>' surname='<++>' fullname='<++>'>
            <organization><++></organization>
            <address>
                <email><++>@<++></email>
                <uri>https://<++></uri>
            </address>
        </author>
        <date year='<++>' month="<++>" />
    </front>
</reference>
-->
