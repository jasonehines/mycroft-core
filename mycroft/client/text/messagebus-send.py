#!/usr/bin/python

import sys
from websocket import create_connection

ws = create_connection("ws://localhost:8000/events/ws")
ws.send(sys.argv[1])
result = ws.recv()
ws.close()
