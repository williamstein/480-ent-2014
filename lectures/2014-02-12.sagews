q

︠ef639a76-de06-45f4-a3b4-23876bb1bef0i︠
%md
# Lecture: Feb 12, 2014
︡6edecad5-95a6-44fa-8d6d-4afd6895ffac︡{"html":"<h1>Lecture: Feb 12, 2014</h1>\n"}︡
︠cf05d0c0-0977-4119-9616-6b6f22d4dbcci︠
%md
## Remark: Simplest curves of each rank (in terms of height)

The **height** of $y^2 = x^3 + ax + b$ is $\max(|a^3|,|b^2|)$.

According to Simon Spicer (one of my Ph.D. students), the smallest height curves of each rank are as below

︡c125e71f-ce09-4e81-9bb7-f4ce39da46dd︡{"html":"<h2>Remark: Simplest curves of each rank (in terms of height)</h2>\n\n<p>The <strong>height</strong> of $y^2 = x^3 + ax + b$ is $\\max(|a^3|,|b^2|)$.</p>\n\n<p>According to Simon Spicer (one of my Ph.D. students), the smallest height curves of each rank are as below</p>\n"}︡
︠b1a30007-ef57-4272-8644-bdd369137756︠
# Smallest height curve of each rank (first 4 are right; last 2 are best known right now.):

v = [((-1, 0), 0),((-1, 1), 1), ((-1, 4), 2), ((-1, 25), 3)] + [((-19,151),4), ((-1,113^2),5)]

# NOTE: the last two might not be of smallest height.

for ab, r in v:
    a, b = ab
    E = EllipticCurve(ab)
    print latex(E), '\t\t', r, '\t\t', max(abs(a^3), b^2), E.gens(), '\n'
︡2f93a91f-db0a-4a6b-aba3-babcd5e4aad5︡{"stdout":"y^2 = x^{3} -  x "}︡{"stdout":" \t\t0 \t\t1 "}︡{"stdout":"[] \n\ny^2 = x^{3} -  x + 1  \t\t1 \t\t1 "}︡{"stdout":"[(1 : -1 : 1)] \n\ny^2 = x^{3} -  x + 4  \t\t2 \t\t16 "}︡{"stdout":"[(-1 : 2 : 1), (0 : 2 : 1)] \n\ny^2 = x^{3} -  x + 25  \t\t3 \t\t625 "}︡{"stdout":"[(-3 : 1 : 1), (-1 : 5 : 1), (0 : 5 : 1)] \n\ny^2 = x^{3} - 19 x + 151  \t\t4 \t\t22801 "}︡{"stdout":"[(-6 : 7 : 1), (-5 : 11 : 1), (-1 : 13 : 1), (2 : 11 : 1)] \n\ny^2 = x^{3} -  x + 12769  \t\t5 \t\t163047361 "}︡{"stdout":"[(-23 : 25 : 1), (-19 : 77 : 1), (-15 : 97 : 1), (-11 : 107 : 1), (-1 : 113 : 1)] \n\n"}︡
︠a859992a-be1e-464f-b6b8-42d5da953889i︠
%md
## The Elliptic Curve Digital Signature Algorithm

 - Used in Sony Playstation 3.

 - Used to secure Bitcoin transaction -- so in the news a lot *right now*...


︡ca199704-7dbc-4dd1-af1b-b55b1d6be23b︡{"html":"<h2>The Elliptic Curve Digital Signature Algorithm</h2>\n\n<ul>\n<li><p>Used in Sony Playstation 3.</p></li>\n<li><p>Used to secure Bitcoin transaction &#8211; so in the news a lot <em>right now</em>&#8230;</p></li>\n</ul>\n"}︡
︠8382c1f2-15b1-42e9-a082-3bf5953abbf7︠
salvus.file("2014-02-12-ps-ecdsa.png")
salvus.file("2014-02-12-bitcoin.png")
salvus.file("bitcoin-1yr.png")
︡9ea2594f-bcf0-4bd9-b33e-8c25d4dfc3dd︡{"once":false,"file":{"show":true,"uuid":"19dafea7-0e65-4728-bc77-85f3040c479e","filename":"2014-02-12-ps-ecdsa.png"}}︡{"once":false,"file":{"show":true,"uuid":"8a559667-37ae-4930-8f32-9f68a95db2d5","filename":"2014-02-12-bitcoin.png"}}︡{"once":false,"file":{"show":true,"uuid":"f6b27c7a-540f-4753-8113-7c02e75c14bc","filename":"bitcoin-1yr.png"}}︡
︠8161fe40-374f-4ac6-9f42-77c73d6f514bi︠

%md
## Elliptic Curve Digital Signature Algorithm (ECDSA)

- ECDSA is a protocol that solves a problem RSA also solves: digitally signing messages

- ECDSA was introduced by Scott Vanstone in 1992.  He's the guy that founded Certicom, a company that rents elliptic curves (e.g., to the NSA for USD 25 million...!).   Also ["In early 2005, two employees at Certicom Corp. began filing a patent application for a type of random number generator using a mathematical concept called elliptic curves."](http://www.theglobeandmail.com/technology/business-technology/the-strange-connection-between-the-nsa-and-an-ontario-tech-firm/article16402341/)  (This is the one with the official NSA back door).



︡404554b4-4ee2-42e2-937c-118d45e65c47︡{"html":"<h2>Elliptic Curve Digital Signature Algorithm (ECDSA)</h2>\n\n<ul>\n<li><p>ECDSA is a protocol that solves a problem RSA also solves: digitally signing messages</p></li>\n<li><p>ECDSA was introduced by Scott Vanstone in 1992.  He&#8217;s the guy that founded Certicom, a company that rents elliptic curves (e.g., to the NSA for USD 25 million&#8230;!).   Also <a href=\"http://www.theglobeandmail.com/technology/business-technology/the-strange-connection-between-the-nsa-and-an-ontario-tech-firm/article16402341/\">\"In early 2005, two employees at Certicom Corp. began filing a patent application for a type of random number generator using a mathematical concept called elliptic curves.\"</a>  (This is the one with the official NSA back door).</p></li>\n</ul>\n"}︡
︠e959b6b8-e944-45dc-a2df-ef3df7acde82i︠
%md
## Motivation for the ECDSA Protocol

Imagine you want to modify the Diffie-Hellman idea to somehow construct a digital signature.  What might you do?

### Quick review of Diffie-Hellman and RSA

 - **Diffie-Hellman**: Fix $g$ and $p$. Agree on a secret shared key by:
       - person 1 choosing random $n$ and sending $g^n \pmod{p}$
       - person 2 choosing random $m$ and sending $g^m \pmod{p}$
       - the secret is $g^{nm}$.

 - **RSA digital signature**:  create a *public key* $(e,n=pq)$ and private key $d=e^{-1}\pmod{\varphi(n)}$.
       - person 1 *digitally signs* hash $t$ of message by computing $s=t^d\pmod{n}$.
       - person 2 *verifies the signature* by computing hash $t$ of message and $s^e=t\pmod{n}$.  Nice and clean.

### How to (fail to) make Diffie-Hellman into a digital signature scheme

Fix $g$ and $p$.  create a *public key* by choosing a random secret $n$ and publishing the *public key* $(g,p,g^n)$.  The *private key* is $n$.

  - person 1 *digitally signs* hash $t$ of a message by choosing random $m$ and computing the *signature*  $(r,s)=(g^m, tg^{mn})$.

  - person 2 *verifies the signature* $(r,s)$ by computing hash $t$ of message and... what?  They have the public key $(g,p,g^n)$.  They also have $r$ (=supposed to equal $g^m$) and $s$ (=supposed to equal $tg^{mn}$).  So they have numbers that are supposed to be $g,p,g^n,g^m,g^{nm}$.  If they could verify that indeed these numbers are as claimed, then they could conclude that the signature is valid...

However it seems hard to decide, given $g,p,g^n,g^m$ whether or not a number that claims to be $g^{nm}$ really is $g^{nm}$.  See <http://en.wikipedia.org/wiki/Decisional_Diffie%E2%80%93Hellman_assumption>.

So... we need a better idea.  And here elliptic curves give us something genuinely new, involving *both* arithmetic in the field $\mathbf{F}_p$ and arithmetic on the elliptic curve.


︡2397a108-359d-4f0e-899f-e3f27159e600︡{"html":"<h2>Motivation for the ECDSA Protocol</h2>\n\n<p>Imagine you want to modify the Diffie-Hellman idea to somehow construct a digital signature.  What might you do?</p>\n\n<h3>Quick review of Diffie-Hellman and RSA</h3>\n\n<ul>\n<li><p><strong>Diffie-Hellman</strong>: Fix $g$ and $p$. Agree on a secret shared key by:</p>\n\n<ul>\n<li>person 1 choosing random $n$ and sending $g^n \\pmod{p}$</li>\n<li>person 2 choosing random $m$ and sending $g^m \\pmod{p}$</li>\n<li>the secret is $g^{nm}$.</li>\n</ul></li>\n<li><p><strong>RSA digital signature</strong>:  create a <em>public key</em> $(e,n=pq)$ and private key $d=e^{-1}\\pmod{\\varphi(n)}$.</p>\n\n<ul>\n<li>person 1 <em>digitally signs</em> hash $t$ of message by computing $s=t^d\\pmod{n}$.</li>\n<li>person 2 <em>verifies the signature</em> by computing hash $t$ of message and $s^e=t\\pmod{n}$.  Nice and clean.</li>\n</ul></li>\n</ul>\n\n<h3>How to (fail to) make Diffie-Hellman into a digital signature scheme</h3>\n\n<p>Fix $g$ and $p$.  create a <em>public key</em> by choosing a random secret $n$ and publishing the <em>public key</em> $(g,p,g^n)$.  The <em>private key</em> is $n$.</p>\n\n<ul>\n<li><p>person 1 <em>digitally signs</em> hash $t$ of a message by choosing random $m$ and computing the <em>signature</em>  $(r,s)=(g^m, tg^{mn})$.</p></li>\n<li><p>person 2 <em>verifies the signature</em> $(r,s)$ by computing hash $t$ of message and&#8230; what?  They have the public key $(g,p,g^n)$.  They also have $r$ (=supposed to equal $g^m$) and $s$ (=supposed to equal $tg^{mn}$).  So they have numbers that are supposed to be $g,p,g^n,g^m,g^{nm}$.  If they could verify that indeed these numbers are as claimed, then they could conclude that the signature is valid&#8230;</p></li>\n</ul>\n\n<p>However it seems hard to decide, given $g,p,g^n,g^m$ whether or not a number that claims to be $g^{nm}$ really is $g^{nm}$.  See <a href=\"http://en.wikipedia.org/wiki/Decisional_Diffie%E2%80%93Hellman_assumption\">http://en.wikipedia.org/wiki/Decisional_Diffie%E2%80%93Hellman_assumption</a>.</p>\n\n<p>So&#8230; we need a better idea.  And here elliptic curves give us something genuinely new, involving <em>both</em> arithmetic in the field $\\mathbf{F}_p$ and arithmetic on the elliptic curve.</p>\n"}︡
︠cf4458b3-1321-456b-8d6a-59d22584bbf7︠
%md
## The ECDSA Protocol

### Creating the Signature

1. **Setup:**  Choose a prime number $q$, an elliptic curve $E$ mod $q$, a point $G$ of some prime order $p$, and define a set-theoretic map (in any way) $\phi:\mathbf{F}_q \to \mathbf{F}_p^*$.    Choose a random secret $d \in \mathbf{F}_p^*$ and let $Q=dG$.  The public key is $(E,G,Q,p)$ and the private key is $d$.

2. **Hash:** Hash the message $m$ to an element $z\in\mathbf{F}_p^*$.

3. **Random Point:** Choose a random $k\in \mathbf{F}_p^*$, and compute $kG \in E(\mathbf{F}_q)$.

4. **Compute Signature:** Compute
$$
   r = \phi(x(k(G))) \in \mathbf{F}_p^*
\quad\text{and}\quad s = \frac{z+rd}{k} \in \mathbf{F}_p.
$$
(If $s=0$, redo with a different random point in step 3.)
The signature of the message is the pair $(r,s)$ of nonzero elements of $\mathbf{F}_p$.


### Verifying the Signature

1. **Hash:** Hash message $m$ to the same $z\in  \mathbf{F}_p^*$ as above.

2. **Verify:** Compute the point $$C = \frac{z}{s}G + \frac{r}{s}Q \in E(\mathbf{F}_q).$$  The signature is valid if $\phi(x(C)) = r$.

**Prop:** *If $(r,s)$ is valid, then this protocol concludes it is valid.*

Proof: Since $(r,s)$ is valid, we have $s=(z+rd)/k$, so $k=(z+rd)/s$.  Thus
$$
  kG = \frac{z}{s}G + \frac{rd}{s}G = \frac{z}{s}G + \frac{r}{s}Q = C.
$$
︡2a0798c6-32ab-40d5-a78a-4e28ee367097︡{"html":"<h2>The ECDSA Protocol</h2>\n\n<h3>Creating the Signature</h3>\n\n<ol>\n<li><p><strong>Setup:</strong>  Choose a prime number $q$, an elliptic curve $E$ mod $q$, a point $G$ of some prime order $p$, and define a set-theoretic map (in any way) $\\phi:\\mathbf{F}_q \\to \\mathbf{F}_p^*$.    Choose a random secret $d \\in \\mathbf{F}_p^*$ and let $Q=dG$.  The public key is $(E,G,Q,p)$ and the private key is $d$.</p></li>\n<li><p><strong>Hash:</strong> Hash the message $m$ to an element $z\\in\\mathbf{F}_p^*$.</p></li>\n<li><p><strong>Random Point:</strong> Choose a random $k\\in \\mathbf{F}_p^*$, and compute $kG \\in E(\\mathbf{F}_q)$.</p></li>\n<li><p><strong>Compute Signature:</strong> Compute\n$$\nr = \\phi(x(k(G))) \\in \\mathbf{F}_p^*\n\\quad\\text{and}\\quad s = \\frac{z+rd}{k} \\in \\mathbf{F}_p.\n$$\n(If $s=0$, redo with a different random point in step 3.)\nThe signature of the message is the pair $(r,s)$ of nonzero elements of $\\mathbf{F}_p$.</p></li>\n</ol>\n\n<h3>Verifying the Signature</h3>\n\n<ol>\n<li><p><strong>Hash:</strong> Hash message $m$ to the same $z\\in  \\mathbf{F}_p^*$ as above.</p></li>\n<li><p><strong>Verify:</strong> Compute the point $$C = \\frac{z}{s}G + \\frac{r}{s}Q \\in E(\\mathbf{F}_q).$$  The signature is valid if $\\phi(x(C)) = r$.</p></li>\n</ol>\n\n<p><strong>Prop:</strong> <em>If $(r,s)$ is valid, then this protocol concludes it is valid.</em></p>\n\n<p>Proof: Since $(r,s)$ is valid, we have $s=(z+rd)/k$, so $k=(z+rd)/s$.  Thus\n$$\n  kG = \\frac{z}{s}G + \\frac{rd}{s}G = \\frac{z}{s}G + \\frac{r}{s}Q = C.\n$$</p>\n"}︡
︠b2bdd3d8-c73b-42fb-9fec-ebf3a18dc568i︠
%md

Next time... we will talk about how the PS3 implementation was messed up, and also about how this is used in bitcoin.
︡8629ce51-de8a-43df-ab73-59974b5d6736︡{"html":"<p>Next time&#8230; we will talk about how the PS3 implementation was messed up, and also about how this is used in bitcoin.</p>\n"}︡
︠e728c5a5-4c67-4778-85a0-bd805f79a8d0︠











