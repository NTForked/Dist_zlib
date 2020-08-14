@echo off
rem --------------------------------------------------------------------
rem Test script to validate some steps of the build procedures locally
rem Usage test.cmd <platform> <configuration>
rem        platform: either 'amd64' or 'X64' or 'x86'
rem        configuration: either 'debug' or 'release'
rem --------------------------------------------------------------------
@echo on

cd ..

SET ZLib_repo="https://github.com/madler/zlib"

IF NOT EXIST zlib (git clone -q --branch=master %ZLib_repo% zlib)

cd zlib

../build.cmd %1 %2

cd ../local


