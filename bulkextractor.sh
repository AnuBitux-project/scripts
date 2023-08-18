#!/bin/bash

echo bulk_extractor is a tool for searching among a file system for desired data
bulk_extractor
echo ' '
echo example: bulk_extractor -o path/for/output/ -f regex image/file/to/scan
echo example: bulk_extractor -o path/for/output/ -f regex -R directory/to/scan/
echo ' '
echo SOME USEFUL REGEX TIPS WITH CATS:
echo 'thanks to: https://twitter.com/s0md3v/status/1171394403065155584'
echo ' '
echo 'cat matches cat'
echo 'ca+t matches caaaaaaaaaaaat but not ct'
echo 'ca*t matches caaaaaaaaaaaat and also ct'
echo 'ca{2,4} matches caat, caaat and caaaat'
echo 'c(at)+ matches catatatatatat'
echo 'c(at|orn) matches cat and corn'
echo 'c[ea]t matches cat and cet'
echo 'c[ea]+t matches caaaat and ceeet'
echo 'c[A-C0-9]t matches cAt, cBt, cCt, c8t etc.'
echo 'c.t matches cat, c&t, c2t (any char between c and t)'
echo 'c.+t matches c3%x4t (any number of any chars)'
echo 'c.*t matches c3%x4t and as well as ct'
echo '^ denotes start of a string, $ denotes the end'
echo '^a+cat will match aaacat in aaacat but not in bbaaacat'
echo 'cat$ will match cat in aaacat but not in aaacats'
echo '^cat$ will match only and only this string i.e. cat'
echo 'c\d+t matches c2784t'
echo 'c\s+ matches c       t'
echo 'c\D+ matches cxxxt ca2t'
echo '(ca+t)dog\1 matches caaaatdogcaaaat' 
echo '[^pc]orn will match zorn, 7orn, $orn etc. but not porn or corn'
echo 'cat(corn)?dog will match both catdog and catcorndog'
echo 'cat(?=dog) matches cat in catdog not in catxyz'
echo 'cat(?!dog) matches cat in catxyz not in catdog'
echo '(?<=cat)dog matches dog in catdog not in xyzdog'
echo '(?<!cat)dog matches dog in xyzdog not in catdog'
echo ' '
echo some useful regex examples:
echo examples may need some fixes
echo ADDRESSES
echo base58 btc: ^[13][a-km-zA-HJ-NP-Z1-9]{25,34}
echo bch: '((bitcoincash|bchreg|bchtest):)?(q|p)[a-z0-9]{41}'
echo eth: ^0x[a-fA-F0-9]{40}
echo ltc: ^[LM3][a-km-zA-HJ-NP-Z1-9]{26,33}
echo doge: ^D{1}[5-9A-HJ-NP-U]{1}[1-9A-HJ-NP-Za-km-z]{32}
echo dash: ?X[1-9A-HJ-NP-Za-km-z]{33}
echo xmr: ^[48][0-9AB][1-9A-HJ-NP-Za-km-z]{93}
echo neo: ^4[0-9AB][1-9A-HJ-NP-Za-km-z]{93}
echo PRIVATE KEYS
echo btc: ^[5KL][1-9A-HJ-NP-Za-km-z]{50,51}$

$SHELL
