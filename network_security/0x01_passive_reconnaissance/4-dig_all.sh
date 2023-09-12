#!/bin/bash
dig +noall +answer "$1" A +noall +answer "$1" NS +noall +answer "$1" SOA +noall +answer "$1" MX +noall +answer "$1" TXT
