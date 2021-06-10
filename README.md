# rotlib-ruby
rot13,rot47,url,base16... ruby bin files for encoding and decoding

**require:**
* ruby

**example for rot13:**
```ruby
$ # Syntax:./rot13.rb [-h][-r=][-l] [file]

$ echo hellow WORLD | ./rot13.rb
uryybj JBEYQ
$ echo uryybj JBEYQ | ./rot13.rb -d
hellow WORLD
$ echo abcd | ./rot13.rb -r=1
bcde
$ ./rot13.rb -r=1 abcd.txt   # data in file
bcde
$ echo uryybj | ./rot13 -l
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
$ # Syntax:./rot47.rb [-h][-r=][-l] [file]

$ echo foo bar | ./rot47.rb
7@@ 32C
$ echo foo bar | ./rot47.rb -r=2
hqq dct
$ echo hqq dct | ./rot47.rb -l
 0 > hqq dct
 1 > irr edu
 2 > jss fev
 3 > ktt gfw
 4 > luu hgx
 5 > mvv ihy
 6 > nww jiz
 7 > oxx kj{
 8 > pyy lk|
 9 > qzz ml}
10 > r{{ nm~
11 > s|| on!
12 > t}} po"
13 > u~~ qp#
14 > v!! rq$
15 > w"" sr%
16 > x## ts&
17 > y$$ ut'
18 > z%% vu(
19 > {&& wv)
20 > |'' xw*
21 > }(( yx+
22 > ~)) zy,
23 > !** {z-
24 > "++ |{.
25 > #,, }|/
26 > $-- ~}0
27 > %.. !~1
28 > &// "!2
29 > '00 #"3
30 > (11 $#4
31 > )22 %$5
32 > *33 &%6
33 > +44 '&7
34 > ,55 ('8
35 > -66 )(9
36 > .77 *):
37 > /88 +*;
38 > 099 ,+<
39 > 1:: -,=
40 > 2;; .->
41 > 3<< /.?
42 > 4== 0/@
43 > 5>> 10A
44 > 6?? 21B
45 > 7@@ 32C
46 > 8AA 43D
47 > 9BB 54E
48 > :CC 65F
49 > ;DD 76G
50 > <EE 87H
51 > =FF 98I
52 > >GG :9J
53 > ?HH ;:K
54 > @II <;L
55 > AJJ =<M
56 > BKK >=N
57 > CLL ?>O
58 > DMM @?P
59 > ENN A@Q
60 > FOO BAR
61 > GPP CBS
62 > HQQ DCT
63 > IRR EDU
64 > JSS FEV
65 > KTT GFW
66 > LUU HGX
67 > MVV IHY
68 > NWW JIZ
69 > OXX KJ[
70 > PYY LK\
71 > QZZ ML]
72 > R[[ NM^
73 > S\\ ON_
74 > T]] PO`
75 > U^^ QPa
76 > V__ RQb
77 > W`` SRc
78 > Xaa TSd
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
$ echo http://localhost:443 | ./url-coder.rb
http%3A%2F%2Flocalhost%3A443%0A
$ echo http%3A%2F%2Flocalhost%3A443%0A | ./url-coder.rb -d
http://localhost:443
```

**example for base16:**

```ruby
$ echo foo bar | ./base16.rb
22666f6f206261725c6e22
$ echo 22666f6f206261725c6e22 | ./base16.rb -d
foo bar
```


