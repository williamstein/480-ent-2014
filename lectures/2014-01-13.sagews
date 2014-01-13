︠dd90422c-4091-43dc-87e8-a32db998eaf5i︠
%md
# Lecture for January 13, 2014
︡5143ab82-00f8-4770-99f1-2246060b4fda︡{"html":"<h1>Lecture for January 13, 2014</h1>\n"}︡
︠330408e7-1263-4a32-a495-347dee6aa4d7i︠
%md
## Startling Observation:

We can test a large number $n$ for primality quickly **without factoring $n$**
The example below works, but so does *any* large-ish number.
︡869df9f6-fd8e-4025-b02d-b29fae16647e︡{"html":"<h2>Startling Observation:</h2>\n\n<p>We can test a large number $n$ for primality quickly <strong>without factoring $n$</strong>\nThe example below works, but so does <em>any</em> large-ish number.</p>\n"}︡
︠73c2f558-64c1-4fd6-867a-6b98045aaafd︠
# a 1000-digit random number
set_random_seed(0)
n = ZZ.random_element(0,10^1000)
n
︡eb559c36-380a-4a57-a43b-781687575d90︡{"stdout":"5689676838946938543680839177378337240691013826446915534569200801663428236911472530376860884517870852325615785387371004438526383101540048923672733260678815741046005505292748205373710049211977934155095033471826503979802911119537797546823207300905361880689990041144008934421814264352063046928476472314700906106573798342531383183727943148105749753653986068509969917464378784084776847745366160379171129780789135655428832824116749527073514758569880813483053453663245897244439248357943990733647572857979373158283621920023605608797494049546677246757387638325287316979984118722854495943334068973549461814898716593161826340133061081312212649146130318682843528657599463710742444328096102556418666845039971797166398453063701031864676709264072141925205811033465309311331227184541344012112141841852781331346829099387672989560302543597852601498851287901869903186555574422304265611951638776817042937988774781290908882419329786706840303947663399809749477715202226513098264542403126532138429167125834850031095141004619\n"}︡
︠bddc6288-2c14-42c1-9fbe-6379a351a6a9︠
%time n.is_prime()
︡1b8bc865-7134-4a4b-86d5-79db41ff866f︡{"stdout":"False\n"}︡{"stdout":"CPU time: 0.05 s, Wall time: 0.05 s\n"}︡
︠502fe4e1-d349-4e1b-bb42-f09fd10c766c︠
n.trial_division()
︡5b5082b8-d07c-4b3b-94cf-cd79b0aa7775︡{"stdout":"5444407"}︡{"stdout":"\n"}︡
︠f59a3ac4-c67f-4894-8e42-388dedc23563i︠

%md
## Another Observation:

We can compute the last few digits of certain numbers very quickly **without computing all digits of the number**.

For example, let's compute the last 10 digits of the largest known prime.
︡6ef771a4-1a0e-43a9-ada9-5d228c823787︡{"html":"<h2>Another Observation:</h2>\n\n<p>We can compute the last few digits of certain numbers very quickly <strong>without computing all digits of the number</strong>.</p>\n\n<p>For example, let&#8217;s compute the last 10 digits of the largest known prime.</p>\n"}︡
︠f81d74df-a33a-4ba7-acdc-a5af5f6528e2︠
%time p = 2^57885161 - 1
︡b52d1dab-fbf9-4be3-8010-b42d4628b239︡{"stdout":"CPU time: 0.01 s, Wall time: 0.02 s\n"}︡
︠b2b46171-61fa-4e02-89ed-2d752d545d20︠
%time p%(10^10)
︡2c4e1ed2-be86-42be-9c53-184c4baa19a3︡{"stdout":"1724285951\n"}︡{"stdout":"CPU time: 0.01 s, Wall time: 0.02 s\n"}︡
︠480d8c14-90fc-41af-bd77-b5c8106dcd3c︠
# Now do it the hard way -- should take about 15 seconds.
%time s = str(p)
print s[-10:]
︡451838cc-233a-4da3-8264-272d6f62bd68︡{"stdout":"CPU time: 14.84 s, Wall time: 14.79 s"}︡{"stdout":"\n"}︡{"stdout":"1724285951\n"}︡
︠ff6886d9-1d62-4f38-b3b2-9b697d40c1c4i︠
%md
Exercise: How could you efficiently compute the *first* few digits of the number $p$ above very efficiently?
︡6a395d3d-3452-48b0-935a-9f899bcb64a8︡{"html":"<p>Exercise: How could you efficiently compute the <em>first</em> few digits of the number $p$ above very efficiently?</p>\n"}︡
︠baf867f7-3e24-410b-baf2-a1edd4d4370ei︠

%md
### The Ring of Integers Modulo $n$

Following section 2.1 of the book.

- Define group

- Define abelian group

- Define ring

- Define field

- Definition of congruence and the ring of integers modulo n.

- Prove a few things from section 2.1:

     - gcd(c,n)=1 and ac=bc(mod n) ==> a=c
     - fact about complete set of residues
     - uniqueness of slution of ax=b (mod n).
︡8cab1d36-6f8d-466e-8b83-9bc0ddfd05dd︡{"html":"<h3>The Ring of Integers Modulo $n$</h3>\n\n<p>Following section 2.1 of the book.</p>\n\n<ul>\n<li><p>Define group</p></li>\n<li><p>Define abelian group</p></li>\n<li><p>Define ring</p></li>\n<li><p>Define field</p></li>\n<li><p>Definition of congruence and the ring of integers modulo n.</p></li>\n<li><p>Prove a few things from section 2.1:</p>\n\n<ul>\n<li>gcd(c,n)=1 and ac=bc(mod n) ==&gt; a=c</li>\n<li>fact about complete set of residues</li>\n<li>uniqueness of slution of ax=b (mod n).</li>\n</ul></li>\n</ul>\n"}︡
︠cced0168-f013-48be-a383-0ab0d0832e2d︠
R = IntegerModRing(20); R
︡a59a42d3-3c6d-4399-b746-b51871f752c5︡{"stdout":"Ring of integers modulo 20\n"}︡
︠a1ee7ba5-1eb9-4c42-9aaf-3641fc35574a︠
list(R)
︡53d98ae1-a816-4456-ab3a-23cc191663c5︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]\n"}︡
︠80cecc02-40fc-403e-a1c8-8c564cb0bfea︠
R(7) + R(18)
︡7c519b32-6d82-4196-8ded-1da557db17b9︡{"stdout":"5\n"}︡
︠5357ddfb-24f7-41fc-a995-7c9e718efbad︠
R(3)*R(8)
︡27395a17-729a-4ff5-9c53-31fdac8a452a︡{"stdout":"4\n"}︡









