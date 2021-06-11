# rotlib-ruby
rot13,rot47,url,base16... ruby bin files for encoding and decoding

**require:**
* ruby

**installation:**

```ruby
wget https://github.com/Madhava-mng/rotlib-ruby/blob/main/rotlib-0.1.0.gem?raw=true
gem install rotlib-0.1.0.gem
```


**example for rot13:**
```ruby
$ # Syntax: rot13 [-h][-r=][-l] [file]

$ echo hellow WORLD | rot13
uryybj JBEYQ
$ echo uryybj JBEYQ | rot13 -d
hellow WORLD
$ echo abcd | rot13 -r=1
bcde
$ rot13 -r=1 abcd.txt   # data in file
bcde
$ echo uryybj | rot13 -l
 0 > uryybj
 1 > vszzck
 2 > wtaadl
 3 > xubbem
 4 > yvccfn
 5 > zwddgo
 6 > axeehp
 7 > byffiq
 8 > czggjr
 9 > dahhks
10 > ebiilt
11 > fcjjmu
12 > gdkknv
13 > hellow
14 > ifmmpx
15 > jgnnqy
16 > khoorz
17 > lippsa
18 > mjqqtb
19 > nkrruc
20 > olssvd
21 > pmttwe
22 > qnuuxf
23 > rovvyg
24 > spwwzh
25 > tqxxai
```

**example for rot47:**

```ruby
$ # Syntax: rot47 [-h][-r=][-l] [file]

$ echo foo bar | rot47
7@@ 32C
$ echo foo bar | rot47 -r=2
hqq dct
$ echo hqq dct | rot47 -l
 0 > hqq dct
 1 > irr edu
 2 > jss fev
 3 > ktt gfw
 4 > luu hgx
 5 > mvv ihy
...
79 > Ybb UTe
80 > Zcc VUf
81 > [dd WVg
82 > \ee XWh
83 > ]ff YXi
84 > ^gg ZYj
85 > _hh [Zk
86 > `ii \[l
87 > ajj ]\m
88 > bkk ^]n
89 > cll _^o
90 > dmm `_p
91 > enn a`q
92 > foo bar
93 > gpp cbs
```

**example for url-encoding:**

```ruby
$ echo http://localhost:443 | url-coder
http%3A%2F%2Flocalhost%3A443%0A
$ echo http%3A%2F%2Flocalhost%3A443%0A | url-coder -d
http://localhost:443
```

**example for base16:**

```ruby
$ echo foo bar | base16
22666f6f206261725c6e22
$ echo 22666f6f206261725c6e22 | base16 -d
foo bar
```


