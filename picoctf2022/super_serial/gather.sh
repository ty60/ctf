#!/bin/bash


set -ex
curl -s http://mercury.picoctf.net:14804/robots.txt > robots.txt
curl -s http://mercury.picoctf.net:14804/index.phps > index.php
curl -s http://mercury.picoctf.net:14804/cookie.phps > cookie.php
curl -s http://mercury.picoctf.net:14804/authentication.phps > authentication.php
