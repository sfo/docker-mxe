#!/bin/sh

for i in $(/usr/lib/mxe/usr/bin/x86_64-w64-mingw32.shared-objdump -x * | grep 'DLL Name' | sort -u | cut -d' ' -f 3) ; do find ${DLL} -iname ${i} -exec cp -v '{}' . \; ; done
