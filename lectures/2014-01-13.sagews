︠dd90422c-4091-43dc-87e8-a32db998eaf5i︠
%md
# Lecture for January 13, 2014

video: <http://youtu.be/JB5LZ2_e9T0>
︡a2f182ab-8183-4c91-998c-0d0cdc50a7f9︡{"html":"<h1>Lecture for January 13, 2014</h1>\n\n<p>video: <a href=\"http://youtu.be/JB5LZ2_e9T0\">http://youtu.be/JB5LZ2_e9T0</a></p>\n"}︡
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
︡9488db49-6f1a-4c7b-8520-776d359d3c34︡{"stdout":"5689676838946938543680839177378337240691013826446915534569200801663428236911472530376860884517870852325615785387371004438526383101540048923672733260678815741046005505292748205373710049211977934155095033471826503979802911119537797546823207300905361880689990041144008934421814264352063046928476472314700906106573798342531383183727943148105749753653986068509969917464378784084776847745366160379171129780789135655428832824116749527073514758569880813483053453663245897244439248357943990733647572857979373158283621920023605608797494049546677246757387638325287316979984118722854495943334068973549461814898716593161826340133061081312212649146130318682843528657599463710742444328096102556418666845039971797166398453063701031864676709264072141925205811033465309311331227184541344012112141841852781331346829099387672989560302543597852601498851287901869903186555574422304265611951638776817042937988774781290908882419329786706840303947663399809749477715202226513098264542403126532138429167125834850031095141004619\n"}︡
︠bddc6288-2c14-42c1-9fbe-6379a351a6a9︠
%time n.is_prime()
︡cc46cb9c-7547-43f9-b883-bbdb50d4caa0︡{"stdout":"False\n"}︡{"stdout":"CPU time: 0.05 s, Wall time: 0.05 s\n"}︡
︠502fe4e1-d349-4e1b-bb42-f09fd10c766c︠
%time n.trial_division()
︡cb53fd26-9a62-4f37-9f62-de7dec39b4e6︡{"stdout":"5444407"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 0.32 s, Wall time: 0.32 s\n"}︡
︠acc11017-36e3-4d09-b455-0d5a32af8319︠
is_prime(127457)
︡0a79ba1f-7a16-4de0-8ce6-d0646bf0f6c7︡{"stdout":"False\n"}︡
︠b4951b97-ec21-40c7-9051-ec916d144998︠
factor(127457)
︡3cbf499f-0490-483d-ba79-474c904eba39︡{"stdout":"11 * 11587\n"}︡
︠fe5e66f0-8e4f-442c-8fe7-b8d891090b56︠
factor(2014)
︡b4efc256-c554-4d36-a361-4590c559e8e9︡{"stdout":"2 * 19 * 53\n"}︡
︠cb027df2-d73f-4ad8-9c14-c30d84438685︠
factor(-2014/17^3)
︡dd9faa1e-4392-4a14-97d0-0cebfbe40ff5︡{"stdout":"-1 * 2 * 17^-3 * 19 * 53\n"}︡
︠3771e3c5-56df-4d57-8ecd-2c04676d7c33︠
factor(x^3-1)
︡a7311eb8-945c-44ed-9ade-0ab83031e755︡{"stdout":"(x^2 + x + 1)*(x - 1)\n"}︡
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
︠d854c54c-dfa6-4a40-b464-851aa5acbd4d︠
%time Mod(2,10^10)^57885161 - 1
︡17475f3d-782f-4861-bd90-01fa6f7f5f75︡{"stdout":"1724285951\n"}︡{"stdout":"CPU time: 0.00 s, Wall time: 0.00 s\n"}︡
︠699a2337-cbc9-4060-a6e8-2fd82bf06328︠
# Mod(a,b) = means the image of a in the ring
# of integers modulo b.
︠480d8c14-90fc-41af-bd77-b5c8106dcd3c︠
# Now do it the hard way -- should take about 15 seconds.
%time s = str(p)
print s[-10:]
︡451838cc-233a-4da3-8264-272d6f62bd68︡{"stdout":"CPU time: 14.84 s, Wall time: 14.79 s"}︡{"stdout":"\n"}︡{"stdout":"1724285951\n"}︡
︠6e2c499e-d996-44d9-ad0e-144028aa05d9︠
928340823408230 * 9023094827358735
︡60e2e64d-b1db-41a6-8525-d1afe08453b1︡{"stdout":"8376507281720748967511561389050\n"}︡
︠c3dcbdd1-7a24-490f-bdb9-9599f7a886dc︠
230 * 735
︡b7466461-6bc5-4e6b-865a-574ed1aba4b7︡{"stdout":"169050\n"}︡
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
︡7fdfae26-5f60-4a6b-9c23-9f00e8640128︡{"stdout":"Ring of integers modulo 20\n"}︡
︠853214bb-ecd5-4754-9fa9-f253a0593f70︠
type(R)
︡68ab0c91-5633-4c16-872f-c1d0b6e51a1e︡{"stdout":"<class 'sage.rings.finite_rings.integer_mod_ring.IntegerModRing_generic_with_category'>\n"}︡
︠a1ee7ba5-1eb9-4c42-9aaf-3641fc35574a︠
list(R)
︡53d98ae1-a816-4456-ab3a-23cc191663c5︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]\n"}︡
︠80cecc02-40fc-403e-a1c8-8c564cb0bfea︠
R(7) + R(18)
︡7c519b32-6d82-4196-8ded-1da557db17b9︡{"stdout":"5\n"}︡
︠5357ddfb-24f7-41fc-a995-7c9e718efbad︠
R(3)*R(8)
︡27395a17-729a-4ff5-9c53-31fdac8a452a︡{"stdout":"4\n"}︡









