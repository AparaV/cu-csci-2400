#!/usr/bin/env python3
import socket
import sys
import argparse

parser = argparse.ArgumentParser(description='Send test to server.')
parser.add_argument("-f","--file", help="This should be your kernels.c file", default="kernels.c")

args = parser.parse_args()

HOST = "cs2400.cs.colorado.edu"
PORT = 20333

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    sock.connect((HOST, PORT))
    with open(args.file, 'rb') as f:
        fileContents = f.read()
    
    sock.sendall(fileContents)
    sock.shutdown(socket.SHUT_WR)

    received = sock.recv(1024).decode()
    while(received):
        print(received)
        received = sock.recv(1024).decode()
finally:
    sock.close()
