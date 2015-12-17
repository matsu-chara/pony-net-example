pony net packageを触ってみた

http://www.monkeysnatchbanana.com/2015/12/13/deconstructing-a-pony-echo-server/
の写経

httpクライアント
作ったけど
```
ld: warning: directory not found for option '-L/usr/local/opt/libressl/lib'
Undefined symbols for architecture x86_64:
  "_GENERAL_NAME_get0_value", referenced from:
      _ssl_X509_all_names in pony-get.o
ld: symbol(s) not found for architecture x86_64
unable to link
```

って言われる(´･_･`)
