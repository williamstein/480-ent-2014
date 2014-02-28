︠a406337d-aeeb-4048-867f-b5f1a50e80b6i︠
%md
# Lecture: Quadratic Reciprocity (part 1) -- 2014-02-28

 - video: <http://youtu.be/uhBCb9-ET8M>
︡3c085f6d-a91d-4b66-9dac-185eb41e3237︡{"html":"<h1>Lecture: Quadratic Reciprocity (part 1) &#8211; 2014-02-28</h1>\n\n<ul>\n<li>video: <a href=\"http://youtu.be/uhBCb9-ET8M\">http://youtu.be/uhBCb9-ET8M</a></li>\n</ul>\n"}︡
︠51f47de2-df31-4397-a779-fb66ea701a6ci︠
%md

## Introduction: A Surprising Pattern Involving Squares Modulo $p$

**Question:** For which primes is 4 a square modulo $p$?

**Answer:** All primes, obviously.

**Question:** When is 2 a square modulo $p$?

Let's make a table:
︡a78cb45c-443b-44a5-9385-195121979fcd︡{"html":"<h2>Introduction: A Surprising Pattern Involving Squares Modulo $p$</h2>\n\n<p><strong>Question:</strong> For which primes is 4 a square modulo $p$?</p>\n\n<p><strong>Answer:</strong> All primes, obviously.</p>\n\n<p><strong>Question:</strong> When is 2 a square modulo $p$?</p>\n\n<p>Let&#8217;s make a table:</p>\n"}︡
︠170e348d-373c-4720-bef2-30932836b7b1︠
a = randrange(0,10^1000); a
︡2d7bf34a-0c2f-4164-b369-1e4d56c1781c︡{"stdout":"2341311365884490608736016776672902748977628493673046910323601238864886910457394743925612299448638859214135104033255645747051854649620616473496693317435448702671811951419233330217491311912369556330316377118916776343170794005823973789544266839826448358097332203441857365180383650480193046082434449162809339471562509969800285297564495118539601974696754084985470406971122750953900575688768127311705359455881490407847188315994191258330633308428171014077905363954282974632258925348674670324516501092478965209273208212575694483505673311229672431333589104160504520619525251814007195979542346992360378449609681306411622916903382956640193757133114517768518894073840365995113638745838871819822805951815410561345209190601754483016483856695223399323936141354807809454388717110099332796316542763933631279682668118048690410579500934624017047060314058759990128881261862537906131533083054900614436640665394502433127874842260242950019928980755233173172593123074769548743425724010676052110216870213692793892569634241871L\n"}︡
︠ed4f8faa-0989-49a7-95c4-0c96c5bec106︠
N(sqrt(a), digits=1000)
︡912319db-5207-4604-a44c-9a0c3a218955︡{"stdout":"4.838709916790311794208369220481306462847166626515889342856620767406128760943798019963049504459874898577229287993863774728307792073667189924259586583606346325742807483398402945443422175085999593250549916616591397585632661216889699006435420602546988079783975698343708782987155930453963557523508370971910697562320159344111328752850561924876281546852337621915389563642886557583798555644263213854256115737007853481654602982421067451549609157186896764697831398746642802428380471180609427865240379181213710836816606699336178291542117592871198029728068128318764929813483966332425434404514411107024330963595875348947508204645094906005307317432262382683085603330031151095138251790836195991990817617194956882256583240551728740867796206340779633272191010792637876146832937773281256143471223406329100191715764691897136510705610067108463625176849220435020993803712674915149723475173158716099097688637144378481623101030717508099503331889947255620391646673981118465797134785963556168905264266544190522339854508386099e499\n"}︡
︠cc19e426-47e4-4995-a7bd-f9b22dc8da11︠
q = next_probable_prime(10^1000); q
︡587ff470-9697-4654-bde1-b71e7b005efa︡{"stdout":"10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000453"}︡{"stdout":"\n"}︡
︠ec134cc6-f1c2-40e9-9c16-4f61bc393058︠

︠8c19c6f3-f0e5-47a4-ae1c-5d1b0b517edd︠
Is 2 a square modulo q?  NO
(Yes -- you can decide.)

Is 3 a square modulo q?  YES  -- but no idea what its square root is!
︠b6dabb15-3cbb-46a0-aa29-eb5278917c6e︠
q%8
︡ea09f164-c7c3-4bf3-9b6f-33eb75912412︡{"stdout":"5\n"}︡
︠f7c6f2f6-825b-4978-8004-3c0054d306f7︠
q%12
︡fbf2d165-5979-4bbc-a029-e24d9d466458︡{"stdout":"1\n"}︡
︠588c1edf-a361-4131-9e3b-627660ec3b5eo︠
for p in primes(3, 100):
    print p, p%8, is_square(Mod(2,p))
︡e6975595-801c-4f80-a0aa-eca097410d27︡{"stdout":"3 3 False\n5 5 False\n7 7 True\n11 3 False\n13 5 False\n17 1 True\n19 3 False\n23 7 True\n29 5 False\n31 7 True\n37 5 False\n41 1 True\n43 3 False\n47 7 True\n53 5 False\n59 3 False\n61 5 False\n67 3 False\n71 7 True\n73 1 True\n79 7 True\n83 3 False\n89 1 True\n97 1 True\n"}︡
︠721ebc8e-a11b-498e-8e92-daf693be9d79︠

for p in primes(5, 100):
    print p, p%12, is_square(Mod(3,p))

︡f95adbaa-60f3-4e68-aac2-bd0dc401bee7︡{"stdout":"5 5 False\n7 7 False\n11 11 True\n13 1 True\n17 5 False\n19 7 False\n23 11 True\n29 5 False\n31 7 False\n37 1 True\n41 5 False\n43 7 False\n47 11 True\n53 5 False\n59 11 True\n61 1 True\n67 7 False\n71 11 True\n73 1 True\n79 7 False\n83 11 True\n89 5 False\n97 1 True\n"}︡
︠99645c09-d721-49ad-899a-8b06d6fee883︠





︠5f0f20b9-97c8-47f9-8bed-38692758a36fo︠
for p in primes(3, 100):
    print p, p%8, is_square(Mod(2,p))
︠3a58b481-3854-44d5-9e8e-93044ab69153i︠
%md
**Question:** When is 3 a square modulo $p$?
︡e6ad2908-0947-402b-a8c7-0e786e603227︡{"html":"<p><strong>Question:</strong> When is 3 a square modulo $p$?</p>\n"}︡
︠e9985b9a-26a8-41ad-9d5b-e3a521378ac2o︠

for p in primes(3, 100):
    print p, p%12, is_square(Mod(3,p))
︠80f26373-4815-40be-b01f-95bd619cc3bbi︠

%md

This pattern is frankly really amazing...

**Surprising (Nontrivial) Theorem:** Whether or not $a$ is a square modulo (an odd prime) $p$ only depends on $p$ modulo $4a$.
︡ad734440-f3f2-451a-96c6-241abd11dd4b︡{"html":"<p>This pattern is frankly really amazing&#8230;</p>\n\n<p><strong>Surprising (Nontrivial) Theorem:</strong> Whether or not $a$ is a square modulo (an odd prime) $p$ only depends on $p$ modulo $4a$.</p>\n"}︡
︠596976d1-d8a9-466c-8d6c-02375be7990ei︠
%md

**Definition:** The Legendre Symbol.

Let $a$ be an integer and $p$ an odd prime.  Let
$$
 \left( \frac{a}{p} \right) = \begin{cases}
         0 & \text{if $\gcd(a,p) \neq 1$},\\\\
        +1 & \text{if $a$ is a quadratic residue (=a square), and}\\\\
        -1 & \text{if $a$ is a quadratic nonresidue (=not a square)}.
\end{cases}
$$
︡a62fb078-c075-45f4-a4f5-3f660b82fab1︡{"html":"<p><strong>Definition:</strong> The Legendre Symbol.</p>\n\n<p>Let $a$ be an integer and $p$ an odd prime.  Let\n$$\n \\left( \\frac{a}{p} \\right) = \\begin{cases}\n         0 &amp; \\text{if $\\gcd(a,p) \\neq 1$},\\\\\n        +1 &amp; \\text{if $a$ is a quadratic residue (=a square), and}\\\\\n        -1 &amp; \\text{if $a$ is a quadratic nonresidue (=not a square)}.\n\\end{cases}\n$$</p>\n"}︡
︠0a79d80d-b748-4f1a-9eee-865f0f1130c6i︠
%md
$$
\left( \frac{a}{p} \right) = a^{(p-1)/2} \pmod{p}
$$
︡5f04e41b-61bf-479d-94ce-31ae81ffab95︡{"html":"<p>$$\n\\left( \\frac{a}{p} \\right) = a^{(p-1)/2} \\pmod{p}\n$$</p>\n"}︡
︠7f29a5c8-6f5a-41af-8e57-ab46f33db25f︠
Mod(2,q)^((q-1)/2)
︡afd7a144-7b10-41cd-826f-b3f6265f1e0c︡{"stdout":"10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000452\n"}︡
︠39120a46-3604-4ca4-97a4-745a274e9f18︠
Mod(3,q)^((q-1)/2)
︡d97c49c8-0608-454f-8f12-7ee7b6845d41︡{"stdout":"1\n"}︡
︠f120e502-7415-496b-823a-b6b8c8df2525i︠
%md

The above theorem is the statement that $\left(\frac{a}{p}\right)$ only depends on the residue of $p$ modulo $4a$.

︡ce606dee-11c9-499a-973d-b2991c291437︡{"html":"<p>The above theorem is the statement that $\\left(\\frac{a}{p}\\right)$ only depends on the residue of $p$ modulo $4a$.</p>\n"}︡
︠d585cfd7-152c-4f75-be0a-8fee677b67c3o︠
for p in primes(3, 100):
    print p, p%12, legendre_symbol(3, p)
︡14879822-4353-43b4-9e4b-3aed8c9044fb︡{"stdout":"3 3 0\n5 5 -1\n7 7 -1\n11 11 1\n13 1 1\n17 5 -1\n19 7 -1\n23 11 1\n29 5 -1\n31 7 -1\n37 1 1\n41 5 -1\n43 7 -1\n47 11 1\n53 5 -1\n59 11 1\n61 1 1\n67 7 -1\n71 11 1\n73 1 1\n79 7 -1\n83 11 1\n89 5 -1\n97 1 1\n"}︡
︠46b023aa-0292-40f5-a952-597b5cc12376︠


︠4d0c6abb-edf8-4b2b-9a06-1acf73614584i︠
%md
## The Legendre Symbol and a Group Homomorphism

For any odd prime $p$, consider the map

$$\psi: \mathbf{F}_p^* \to \{\pm 1\}$$

given by $\psi(a) = \left(\frac{a}{p}\right)$.

**Proposition:** $\psi$ is a surjective group homomorphism, i.e., $\psi(ab) = \psi(a)\psi(b)$, and $-1$ is in the image.

︡dd0b66c4-f107-4297-b7e6-da0600b83833︡{"html":"<h2>The Legendre Symbol and a Group Homomorphism</h2>\n\n<p>For any odd prime $p$, consider the map</p>\n\n<p>$$\\psi: \\mathbf{F}_p^* \\to {\\pm 1}$$</p>\n\n<p>given by $\\psi(a) = \\left(\\frac{a}{p}\\right)$.</p>\n\n<p><strong>Proposition:</strong> $\\psi$ is a surjective group homomorphism, i.e., $\\psi(ab) = \\psi(a)\\psi(b)$, and $-1$ is in the image.</p>\n"}︡
︠5d8756fd-86dd-4cdd-bcfe-088f4e137df7︠

︠51e2c83d-c221-4cd0-964f-6fdfb1c2575bi︠


%md
But, in order to prove this proposition, we'll need another Theorem, which we skipped from chapter 2:

**Theorem:** The group $\mathbf{F}_p^*$ is cyclic, i.e., there is an element $g\in \mathbf{F}_p^*$ such that every element of $\mathbf{F}_p^*$ is a power of $g$.

We will prove this theorem soon.

Incidentally, let's look at how often $3$ is a generator modulo $p$:
︡03dc0b56-ffb4-4237-99fc-068df3decc16︡{"html":"<p>But, in order to prove this proposition, we&#8217;ll need another Theorem, which we skipped from chapter 2:</p>\n\n<p><strong>Theorem:</strong> The group $\\mathbf{F}_p^*$ is cyclic, i.e., there is an element $g\\in \\mathbf{F}_p^*$ such that every element of $\\mathbf{F}_p^*$ is a power of $g$.</p>\n\n<p>We will prove this theorem soon.</p>\n\n<p>Incidentally, let&#8217;s look at how often $3$ is a generator modulo $p$:</p>\n"}︡
︠e94120d4-fbfd-4f4b-a1ff-d14a6e730c2do︠
for p in primes(5,4000):
    if Mod(3,p).multiplicative_order() == p-1:
        print p,
︡e0f2f5d6-8389-4fe6-852e-85db7d2c30db︡{"stdout":"5 7 17 19 29 31 43 53 79 89 101 113 127 137 139 149 163 173 197 199 211 223 233 257 269 281 283 293 317 331 353 379 389 401 449 461 463 487 509 521 557 569 571 593 607 617 631 641 653 677 691 701 739 751 773 797 809 811 821 823 857 859 881 907 929 941 953 977 1013 1039 1049 1061 1063 1087 1097 1109 1123 1193 1217 1229 1231 1277 1279 1291 1301 1327 1361 1373 1409 1423 1433 1447 1459 1481 1483 1493 1553 1567 1579 1601 1613 1627 1637 1663 1697 1699 1709 1721 1723 1733 1747 1831 1889 1901 1913 1949 1951 1973 1987 1997 1999 2011 2069 2081 2083 2129 2141 2143 2153 2213 2237 2239 "}︡{"stdout":"2273 2309 2311 2333 2347 2357 2371 2381 2393 2417 2467 2477 2503 2539 2549 2609 2633 2647 2657 2659 2683 2693 2707 2719 2729 2731 2741 2753 2767 2777 2789 2801 2837 2861 2897 2909 2957 2969 3041 3089 3137 3163 3209 3257 3259 3271 3307 3329 3331 3389 3391 3413 3449 3461 3463 3533 3547 3557 3559 3571 3581 3583 3593 3617 3643 3677 3701 3727 3761 3797 3821 3823 3833 3917 3919 3929 3931 3943 3989"}︡
︠d5bc695e-5265-4fc5-a3f3-32980c4ed9b9︠

︠0f36f6b4-1e8b-4c11-9455-3a724339444ci︠
%md
Wow, that's pretty often!

**Unsolved Problem (Artin's Primitive Root Conjecture):** Prove that $3$ is a generator of $\mathbf{F}_p^*$ for infinitely many primes $p$.

Note: You can replace $3$ by any positive non-square, and the problem is still unsolved.  It is implied by the (generalized) Riemann Hypothesis.
︡2d821354-d959-4608-bac2-226536be9914︡{"html":"<p>Wow, that&#8217;s pretty often!</p>\n\n<p><strong>Unsolved Problem (Artin&#8217;s Primitive Root Conjecture):</strong> Prove that $3$ is a generator of $\\mathbf{F}_p^*$ for infinitely many primes $p$.</p>\n\n<p>Note: You can replace $3$ by any positive non-square, and the problem is still unsolved.  It is implied by the (generalized) Riemann Hypothesis.</p>\n"}︡
︠d8ab63ec-24aa-47f1-bd1e-a7892d991773︠

︠6cf3abe5-7bdc-4e95-890d-cea97ca39330︠

︠27509c0a-5808-48f7-b8fb-35e54b92ea5bi︠
%md
## Gauss's Law of Quadratic Reciprocity

The big theorem we're aiming for is the following:

**Theorem (Gauss)**
Suppose $p$ and $q$ are distinct odd primes.  Then
$$
\left(\frac{p}{q}\right) = (-1)^{\frac{p-1}{2}\cdot \frac{q-1}{2}}\left(\frac{q}{p}\right).
$$
Also
$$
  \left(\frac{-1}{p}\right) = (-1)^{(p-1)/2}\qquad\text{ and }\qquad
  \left(\frac{2}{p}\right)  = \begin{cases}  1 & \text{ if } p\equiv \pm 1\pmod{8}\\\\
    -1 & \text{ if } p \equiv \pm 3\pmod{8}.
            \end{cases}
$$
︡346bd650-bce7-4e33-a09b-799dc12d3edb︡{"html":"<h2>Gauss&#8217;s Law of Quadratic Reciprocity</h2>\n\n<p>The big theorem we&#8217;re aiming for is the following:</p>\n\n<p><strong>Theorem (Gauss)</strong>\nSuppose $p$ and $q$ are distinct odd primes.  Then\n$$\n\\left(\\frac{p}{q}\\right) = (-1)^{\\frac{p-1}{2}\\cdot \\frac{q-1}{2}}\\left(\\frac{q}{p}\\right).\n$$\nAlso\n$$\n  \\left(\\frac{-1}{p}\\right) = (-1)^{(p-1)/2}\\qquad\\text{ and }\\qquad\n  \\left(\\frac{2}{p}\\right)  = \\begin{cases}  1 &amp; \\text{ if } p\\equiv \\pm 1\\pmod{8}\\\\\n    -1 &amp; \\text{ if } p \\equiv \\pm 3\\pmod{8}.\n            \\end{cases}\n$$</p>\n"}︡
︠0e814a17-56ca-4c9f-aff0-7c2302e20a90︠
︠5c600dc0-e8ea-4eda-8f91-ed90c38616aci︠

%md

**Equivalent Questions**:

- Is 5 a square modulo 2017?  (Seems hard to answer "by hand" doesn't it!)

- Is 2017 a square modulo 5?  (Not so bad)

- Is 2 a square modulo 5?   (Really easy)

- Nope.

︡35121494-2d48-4aed-abe7-fdd30831295a︡{"html":"<p><strong>Equivalent Questions</strong>:</p>\n\n<ul>\n<li><p>Is 5 a square modulo 2017?  (Seems hard to answer &#8220;by hand&#8221; doesn&#8217;t it!)</p></li>\n<li><p>Is 2017 a square modulo 5?  (Not so bad)</p></li>\n<li><p>Is 2 a square modulo 5?   (Really easy)</p></li>\n<li><p>Nope.</p></li>\n</ul>\n"}︡
︠dd6cced8-ac2c-4a7b-be28-f5969a6f29d0i︠


%md

On the whiteboard, prove that

 - $\mathbf{F}_p^*$ is cyclic
 - $\psi$ is a homomorphism
︡0454ea55-066d-4787-88fd-be019d7d1997︡{"html":"<p>On the whiteboard, prove that</p>\n\n<ul>\n<li>$\\mathbf{F}_p^*$ is cyclic</li>\n<li>$\\psi$ is a homomorphism</li>\n</ul>\n"}︡
︠b9fc96ac-b8b2-4787-84dc-d2d83280733a︠









