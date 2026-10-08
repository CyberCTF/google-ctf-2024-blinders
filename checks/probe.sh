#!/bin/sh
# The server reads a request and rejects an unknown one.
# The service runs the challenge in nsjail for each connection; the probe sends one harmless request (an unknown operation, which the server answers with Nope.).
(printf 'x\n'; sleep 4) | curl -sS --max-time 6 telnet://challenge:1337 2>/dev/null | grep -q "Nope."
