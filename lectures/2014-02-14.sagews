︠a84bd93a-f5b2-4c5d-a99a-5249bc43da00i︠
%md
# Lecture on Feb 14, 2014 -- Elliptic Curve Digital Signature Algorithm (ECDSA)
︡84090fd1-c077-47cf-8e47-ef4647c8657b︡{"html":"<h1>Lecture on Feb 14, 2014 &#8211; Elliptic Curve Digital Signature Algorithm (ECDSA)</h1>\n"}︡
︠0162a528-ee0c-49ed-b902-27f06d337bc0i︠
%md
## A very simple ECDSA implementation demo and test

**Setup:**  Choose a prime number $q$, an elliptic curve $E$ mod $q$, a point $G$ of some prime order $p$, and define a set-theoretic map (in any way) $\phi:\mathbf{F}_q \to \mathbf{F}_p^*$.    Choose a random secret $d \in \mathbf{F}_p^*$ and let $Q=dG$.  The public key is $(E,G,Q,p)$ and the private key is $d$.
︡a2cc9c8c-f30e-40eb-bfff-3ff081ed7d42︡{"html":"<h2>A very simple ECDSA implementation demo and test</h2>\n\n<p><strong>Setup:</strong>  Choose a prime number $q$, an elliptic curve $E$ mod $q$, a point $G$ of some prime order $p$, and define a set-theoretic map (in any way) $\\phi:\\mathbf{F}_q \\to \\mathbf{F}_p^*$.    Choose a random secret $d \\in \\mathbf{F}_p^*$ and let $Q=dG$.  The public key is $(E,G,Q,p)$ and the private key is $d$.</p>\n"}︡
︠4109e8dd-92e3-452a-a168-553d3a3a22a0︠
q = next_prime(2^128); q
︡bddedb6f-a934-496b-bc08-a91fa2612352︡{"stdout":"340282366920938463463374607431768211507\n"}︡
︠f1a54144-4f96-49d5-aac6-f90b9b6e83bd︠
Fq = GF(q)
E = EllipticCurve(Fq, [3,4])
E.cardinality().factor()
︡46ed097c-a694-4be1-bf88-0c58a5ee0afc︡{"stdout":"2^2 * 5 * 17 * 1000830490943936657180023443038782793"}︡{"stdout":"\n"}︡
︠630f565e-188a-49d8-9869-f0a2cbcb1da6︠
# Found via -- P = E.random_point(); P
P = E([281642621541096348567721368996052493558, 32140399447630624407106076277780683785])
︡fffe6ffe-4cf8-40e2-a3b0-2efeafe92c81︡
︠3166b54e-6851-47cb-8ad9-879d31538ebe︠
factor(P.order())
︡da636c60-f853-47fe-a510-9ff3e8c9c9a4︡{"stdout":"2 * 1000830490943936657180023443038782793\n"}︡
︠d8a619fc-975d-4919-b541-40962b156155︠
G = 2*P; p = G.order(); p
Fp = GF(p)
︡83e04fee-6f4b-4e01-a82d-0237e15a57c9︡{"stdout":"1000830490943936657180023443038782793\n"}︡
︠f791d099-f4a5-442c-a833-4289633cc11f︠
def phi(x):
    a = Fp(x.lift())
    if a == 0:
        a = Fp(1)
    return a
︡caefc0cf-e9cd-444d-858e-e53a7ee30b40︡
︠56a35a2f-8b06-47e1-b98a-eb765ecb3a0c︠
d = Fp.random_element()
print "secret =", d
︡1e941131-87d9-4722-a26a-3322b40f917f︡{"stdout":"secret = 85509169948493851489056561321083269\n"}︡
︠a66b12ea-d313-410a-a6a1-23dc6fd7a0a1︠
Q = lift(d)*G    # lift(d) is integer in [0..p-1]
︡6dc2bfd6-720b-4fa1-b718-cfb5c2551826︡
︠2be18f5d-b3fe-4790-9211-fb8edcb552e4︠
public_key = {'E':E, 'G':G, 'Q':Q, 'p':p}
︡3fc90635-60af-47e6-8a7c-a8487577f893︡
︠f929d6f8-9c15-4172-924b-d7cbabe3c893i︠
%md
Let's sign something...

**Hash:** Hash the message $m$ to an element $z\in\mathbf{F}_p^*$.

︡3ebe3c56-7e6a-4cf5-aeb1-84b78bf504a8︡{"html":"<p>Let&#8217;s sign something&#8230;</p>\n\n<p><strong>Hash:</strong> Hash the message $m$ to an element $z\\in\\mathbf{F}_p^*$.</p>\n"}︡
︠c2b0826d-db5c-4c5d-adae-74188e361cc4︠
message = "This is math 480.  It's a very flexible class about various things. -- William"
import hashlib
h = hashlib.sha1(message).hexdigest(); h
︡79fc519c-cb00-409c-8fab-0240a0fb72d3︡{"stdout":"'e77f52876de8572f187bb226479f7268ec9464d0'\n"}︡
︠0fe9a693-1d4b-46d1-bf53-2f9f9d6d1149︠
# But we need a number modulo p, so
z = hash(h) % p; z
︡b44c191f-ac74-4c60-8645-4fa60d0a4be8︡{"stdout":"4318374665117912394\n"}︡
︠a04ba5e3-3621-4f31-8c43-af4676168719i︠
%md
**Random Point:** Choose a random $k\in \mathbf{F}_p^*$, and compute $kG \in E(\mathbf{F}_q)$.
︡969a0291-b1c5-4842-bd54-06567e06b6f9︡{"html":"<p><strong>Random Point:</strong> Choose a random $k\\in \\mathbf{F}_p^*$, and compute $kG \\in E(\\mathbf{F}_q)$.</p>\n"}︡
︠7d8633ae-8f91-46c0-a1b3-b62565991434︠
k = Fp.random_element()
print "k =",k
kG = lift(k)*G
print "kG = ",kG
︡1108f8f1-d282-4758-8356-eefebff87c3a︡{"stdout":"k = 347668061274271830327738527361755354\n"}︡{"stdout":"kG =  (192262063298514357132703491956071683175 : 227188893942290647567416275324301730328 : 1)\n"}︡
︠795ebfe4-d36e-4625-9ce0-5fbb9463481fi︠
%md
**Compute Signature:** Compute
$$
   r = \phi(x(k(G))) \in \mathbf{F}_p^*
\quad\text{and}\quad s = \frac{z+rd}{k} \in \mathbf{F}_p.
$$
︡d4f0117a-f27c-44ed-b79c-b638b8816041︡{"html":"<p><strong>Compute Signature:</strong> Compute\n$$\n   r = \\phi(x(k(G))) \\in \\mathbf{F}_p^*\n\\quad\\text{and}\\quad s = \\frac{z+rd}{k} \\in \\mathbf{F}_p.\n$$</p>\n"}︡
︠7f1d4228-949b-4ff9-ada6-59872bee8d01︠
r = phi(kG[0]); s = (z+r*d)/k
sig = (r,s)
print "sig =", sig
︡dfabbebc-d195-457f-a223-b705633edae5︡{"stdout":"sig = (102609037278518954138990892625386919, 191169968480879734397280308320707618)\n"}︡
︠470d2afd-6329-4f6e-a79f-bbb2a575830ai︠
%md
**Hash:** Hash message $m$ to the same $z\in  \mathbf{F}_p^*$ as above.

**Verify:** Compute the point $$C = \frac{z}{s}G + \frac{r}{s}Q \in E(\mathbf{F}_q).$$  The signature is valid if $\phi(x(C)) = r$.
︡c26eda20-ac4e-4750-9a74-8367f5b6c667︡{"html":"<p><strong>Hash:</strong> Hash message $m$ to the same $z\\in  \\mathbf{F}_p^*$ as above.</p>\n\n<p><strong>Verify:</strong> Compute the point $$C = \\frac{z}{s}G + \\frac{r}{s}Q \\in E(\\mathbf{F}_q).$$  The signature is valid if $\\phi(x(C)) = r$.</p>\n"}︡
︠0be87ff9-617a-4095-919c-41da76aaeb4f︠
z
︡b260102b-b454-41b7-a236-8c306b4dd802︡{"stdout":"4318374665117912394\n"}︡
︠ea3ae5dd-d4d4-411d-bba7-5054c430b286︠
C = lift(z/s)*G + lift(r/s)*Q; C
︡854fcb7b-3f9b-4e37-be51-21934ba647c6︡{"stdout":"(192262063298514357132703491956071683175 : 227188893942290647567416275324301730328 : 1)\n"}︡
︠2a569594-490e-4903-8122-629301e71b6e︠
phi(C[0]) #  == r  ? yep
︡b4821848-6f05-416d-91fb-07579acc8999︡{"stdout":"102609037278518954138990892625386919\n"}︡
︠49e7fe9b-fc31-447e-9901-8c635f4f341c︠

︠989dc486-2f96-4cfe-9ab8-86b2a55ae8eci︠
%md
**Prop:** *If $(r,s)$ is valid, then this protocol concludes it is valid.*

Proof: Since $(r,s)$ is valid, we have $s=(z+rd)/k$, so $k=(z+rd)/s$.  Thus
$$
  kG = \frac{z}{s}G + \frac{rd}{s}G = \frac{z}{s}G + \frac{r}{s}Q = C.
$$
︡7d73fddf-fde1-4f9d-8d5d-071151db2528︡{"html":"<p><strong>Prop:</strong> <em>If $(r,s)$ is valid, then this protocol concludes it is valid.</em></p>\n\n<p>Proof: Since $(r,s)$ is valid, we have $s=(z+rd)/k$, so $k=(z+rd)/s$.  Thus\n$$\n  kG = \\frac{z}{s}G + \\frac{rd}{s}G = \\frac{z}{s}G + \\frac{r}{s}Q = C.\n$$</p>\n"}︡
︠9b7ee500-5ed6-4260-96f7-aa21952f7d19i︠
%md
**Let's sign another document...**
︡21d6cab8-2888-4a59-bc9d-f5ae7ca73d7b︡{"html":"<p><strong>Let&#8217;s sign another document&#8230;</strong></p>\n"}︡
︠ff8fd29b-9ece-4328-a9cb-1c4b120924f7︠
message2 = "This is a very flexible class about various things. -- William"
h2 = hashlib.sha1(message2).hexdigest()
z2 = hash(h2) % p
r2 = phi(kG[0]); s2 = (z2+r2*d)/k
sig2 = (r2, s2)
print "sig2 =", sig2
︡0c354e5a-c5c4-4e5b-b7fc-42b103d76512︡{"stdout":"sig2 = (102609037278518954138990892625386919, 384349446532996116240732504218379482)\n"}︡
︠d2b6592e-495f-432d-a1b9-444480f50be4i︠
%md
**And verify the signature...**
︡13588002-83b8-4fe5-ab6c-276f6582a7b6︡{"html":"<p><strong>And verify the signature&#8230;</strong></p>\n"}︡
︠4f77f6fa-ffef-457d-b2eb-2ea1d6aa7377︠
C2 = lift(z2/s2)*G + lift(r2/s2)*Q; C2
︡b1c42279-1c51-4447-ad9e-122d267fd926︡{"stdout":"(192262063298514357132703491956071683175 : 227188893942290647567416275324301730328 : 1)\n"}︡
︠1aa8595f-f61d-4409-8912-e4474c21faa1︠
phi(C2[0])            # == r2 above.
︡c4fe9bef-d9dc-4741-917e-60a1ead17abf︡{"stdout":"102609037278518954138990892625386919\n"}︡
︠e69f922a-2aaf-41f7-a77c-0c96a04c496f︠

︠044e5aa7-9e63-493e-8b2b-75d89c4c9f8bi︠
%md
**Question:** What serious mistake did we just make?!
︡4e705793-9fc2-4cd5-b2cd-dd67c5700114︡{"html":"<p><strong>Question:</strong> What serious mistake did we just make?!</p>\n"}︡
︠06399c0d-1c30-4786-9aab-955dc6e0364f︠












︠c9283ab3-c0fc-4853-b2a6-d6d9e1e28d26︠
# Just looking at the signatures, we can easily compute this number:
print (z - z2)/(s-s2)

# Wait, that's actually k, which was some secret thing used in signing... so?
k
︡c276a443-de00-4e4e-9a56-d7ad128139e0︡{"stdout":"347668061274271830327738527361755354\n"}︡{"stdout":"347668061274271830327738527361755354\n"}︡
︠9f4bdb27-783d-41c4-9ab6-5a277ed93628︠
# so!
(s*k-z)/r   # all known by attacker
︡a95de399-32e4-430a-b784-e131e62b5c67︡{"stdout":"85509169948493851489056561321083269\n"}︡
︠9419f698-6cbe-474a-b112-44717967bcc7︠
# Umh, that's the private key. Crap.
d
︡3562e6e8-e32c-48fc-a558-952524fecd0a︡{"stdout":"85509169948493851489056561321083269\n"}︡
︠f5367c60-2478-4cb4-91b7-1c237f71f5a9i︠
%md

### Our mistake

Our mistake was that we didn't generate a new random k.
In general, if the k's aren't *really damn random* ECDSA will be easily crackable.
︡fdfa6e15-6aca-4aca-8ac0-94ff25098897︡{"html":"<h3>Our mistake</h3>\n\n<p>Our mistake was that we didn&#8217;t generate a new random k.\nIn general, if the k&#8217;s aren&#8217;t <em>really damn random</em> ECDSA will be easily crackable.</p>\n"}︡
︠512f5cc2-b101-4afe-aa1d-d2f6b004ce93i︠

%md
## ECDSA in PS3 -- an egrarious example

They used one single $k$, not changing it at all, leading to them being totally owned.

︡fdef9295-bb9d-48c0-a96c-efcc15a82842︡{"html":"<h2>ECDSA in PS3 &#8211; an egrarious example</h2>\n\n<p>They used one single $k$, not changing it at all, leading to them being totally owned.</p>\n"}︡
︠f6a9683d-043d-49c1-9aba-6673cc9dd71fi︠
salvus.file("ps3-fail.png")
︡277218e5-dc3d-46f5-b4af-5cac0997003b︡{"once":false,"file":{"show":true,"uuid":"1789b00d-d246-461a-9a91-42d5df188a00","filename":"ps3-fail.png"}}︡
︠0aa765ef-52ee-4b09-9742-606ce8a90988︠
salvus.file('ps3-random.png')
︡64f141ca-3b70-4c17-b18d-6989d1c81a72︡{"once":false,"file":{"show":true,"uuid":"663ec1a4-9e05-4dcb-b017-176caaec8103","filename":"ps3-random.png"}}︡
︠39357f3f-27c4-46f4-9e93-11695376ff64i︠
%html
<a href='http://events.ccc.de/congress/2010/Fahrplan/attachments/1780_27c3_console_hacking_2010.pdf' target='_blank'>http://events.ccc.de/congress/2010/Fahrplan/attachments/1780_27c3_console_hacking_2010.pdf</a>
︡296845ed-120c-4454-82bc-c5cac7c70419︡{"html":"<a href='http://events.ccc.de/congress/2010/Fahrplan/attachments/1780_27c3_console_hacking_2010.pdf' target='_blank'>http://events.ccc.de/congress/2010/Fahrplan/attachments/1780_27c3_console_hacking_2010.pdf</a>"}︡
︠f17500c4-f85e-4d74-abe0-254085edc9f2︠

︠87c2e8e2-1579-4f04-a063-6a63868a0811︠

︠f4be487e-76c1-4f13-8903-b790fcec7777i︠
%md
### ECDSA in PS3 has since been fixed...
︡797f0302-ebc6-49c7-b7e5-573468532fda︡{"html":"<h3>ECDSA in PS3 has since been fixed&#8230;</h3>\n"}︡
︠5ec7a077-5dbe-4593-a395-1650f22ff698i︠
salvus.file("ps3-fixed.png")
︡29fca080-898f-425e-b438-228ce8c1b1f2︡{"once":false,"file":{"show":true,"uuid":"75a10795-59d3-4003-8fe6-bb899f007f06","filename":"ps3-fixed.png"}}︡
︠d37e31ae-c635-42f0-9abb-bdc9d4c22d9b︠

︠afd9d4e5-ccc6-4f3d-a3fe-71f817994d0c︠

︠9885e7e3-290c-4a2a-a284-828fba68d54ei︠

%md
## ECDSA in Bitcoin

Yes, people have messed up the implementation of ECDSA here too, leading to theft...


︡aa69a7cc-ecec-4d27-9b90-6b7f2997047e︡{"html":"<h2>ECDSA in Bitcoin</h2>\n\n<p>Yes, people have messed up the implementation of ECDSA here too, leading to theft&#8230;</p>\n"}︡
︠660b67bb-83f6-4330-b64e-922778a3e658︠
salvus.file('bitcoin-random.png')
︡2d4ddee8-e5f0-4ea3-bef1-f254f829230b︡{"once":false,"file":{"show":true,"uuid":"aa5f7d6e-a074-4ad1-aa59-82b7f253119c","filename":"bitcoin-random.png"}}︡
︠0ead47f1-8f89-495d-a065-219b80c19771i︠
%md
## The Bitcoin Elliptic Curve

Definition: <https://en.bitcoin.it/wiki/Secp256k1>

Discussion: <https://bitcointalk.org/?topic=2699.0> --

   "ECDSA verification is the primary CPU bottleneck for running a network node. So if Koblitz curves do indeed perform better we might end up grateful for that in future ..."
︡59bb67ad-99af-4b75-85f1-8d8d22c0173a︡{"html":"<h2>The Bitcoin Elliptic Curve</h2>\n\n<p>Definition: <a href=\"https://en.bitcoin.it/wiki/Secp256k1\">https://en.bitcoin.it/wiki/Secp256k1</a></p>\n\n<p>Discussion: <a href=\"https://bitcointalk.org/?topic=2699.0\">https://bitcointalk.org/?topic=2699.0</a> &#8211; </p>\n\n<p>&#8220;ECDSA verification is the primary CPU bottleneck for running a network node. So if Koblitz curves do indeed perform better we might end up grateful for that in future &#8230;&#8221;</p>\n"}︡
︠a2252709-7079-4a59-899c-01b3a91d6a72︠
q =  2^256 - 2^32 - 2^9 - 2^8 - 2^7 - 2^6 - 2^4 - 1
is_prime(q)
︡7cd6e256-7927-4638-bde1-8fca8d6d3ed2︡{"stdout":"True\n"}︡
︠fd8b72d7-4fef-4472-a784-468045e34173︠
# This is the elliptic curve "Secp256k1", where the "k" stands for "Koblitz".
E = EllipticCurve(GF(q),[0,7]); E
︡83c86533-2adb-459b-a6ac-b7b3ba1089c6︡{"stdout":"Elliptic Curve defined by y^2 = x^3 + 7 over Finite Field of size 115792089237316195423570985008687907853269984665640564039457584007908834671663\n"}︡
︠bf3a34bd-8c21-47b0-85a3-e85317a25712i︠
salvus.file('koblitz.png')
︡03978a46-4676-417b-81e6-cb519a944950︡{"once":false,"file":{"show":true,"uuid":"9cbdc218-ea43-4541-8e3b-e850a5c9cedb","filename":"koblitz.png"}}︡
︠516f9b69-ca6e-4e2e-b300-d87b20bf45cb︠
%time p = E.cardinality(); p
︡acbf41a4-98ef-429f-897d-f16c9ac6670f︡{"stdout":"115792089237316195423570985008687907852837564279074904382605163141518161494337\n"}︡{"stdout":"CPU time: 0.09 s, Wall time: 0.02 s\n"}︡
︠b07476b7-9b19-46e5-a777-b3614d2a90db︠
is_prime(p)
︡f6945279-cbe1-4891-9574-1ef35073c247︡{"stdout":"True\n"}︡
︠dcee6887-b5f4-446b-ad87-ecaf0b876c61︠
len(p.str(2))
︡8376e36d-fee8-40cf-81b0-6cacf2dcaa51︡{"stdout":"256\n"}︡
︠b9c79180-ea54-4632-bfc2-f8f7ec54c8f8︠
s = '79BE667E F9DCBBAC 55A06295 CE870B07 029BFCDB 2DCE28D9 59F2815B 16F81798'.replace(' ','').lower(); s
︡c74454a8-4c3f-4541-947a-c307d15c8697︡{"stdout":"'79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798'\n"}︡
︠f4ebe00a-064f-4ea1-9036-ff854ae46c44︠
x = E.base_field()(ZZ(s,base=16)); x
︡1775ef9f-c95a-460b-a519-c088a175ba02︡{"stdout":"55066263022277343669578718895168534326250603453777594175500187360389116729240\n"}︡
︠f49f8cbe-8312-4edd-bd2e-a35661682780︠
G = E.lift_x(x)
G
-G
︡e38025e4-e403-4b35-a0ab-9974dd76d269︡{"stdout":"(55066263022277343669578718895168534326250603453777594175500187360389116729240 : 32670510020758816978083085130507043184471273380659243275938904335757337482424 : 1)\n"}︡{"stdout":"(55066263022277343669578718895168534326250603453777594175500187360389116729240 : 83121579216557378445487899878180864668798711284981320763518679672151497189239 : 1)\n"}︡
︠34628408-62cb-44f5-81ec-325e70bc2b52︠
ZZ(G[1]).str(base=16)  # this is the one
ZZ(-G[1]).str(base=16)
︡b035bb69-550b-43eb-8071-264843035ad4︡{"stdout":"'483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8'\n"}︡{"stdout":"'b7c52588d95c3b9aa25b0403f1eef75702e84bb7597aabe663b82f6f04ef2777'\n"}︡
︠a0b28b69-8604-47b9-8e7c-8e78d13a8029︠
G
︡c4d2e556-9c3a-4cad-91d2-07e152b520b5︡{"stdout":"(55066263022277343669578718895168534326250603453777594175500187360389116729240 : 32670510020758816978083085130507043184471273380659243275938904335757337482424 : 1)\n"}︡
︠72268210-7b6d-47f1-943d-952b69c20edb︠
G.order()
︡eb58de99-2576-4415-8cce-6c6fc4edf4a6︡{"stdout":"115792089237316195423570985008687907852837564279074904382605163141518161494337\n"}︡
︠ca4f1a37-e48b-478f-b661-a69f032c6e6a︠









