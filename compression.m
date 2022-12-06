function compre=compression(X)
[CR,BPP] = wcompress('c',X,'wpeppers.wtc','spiht','maxloop',12);
cLSB = uint8(wcompress('u','wpeppers.wtc'));
compre=cLSB;