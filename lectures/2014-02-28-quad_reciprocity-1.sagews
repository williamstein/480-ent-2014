︠a406337d-aeeb-4048-867f-b5f1a50e80b6i︠
%md
# Lecture: Quadratic Reciprocity (part 1) -- 2014-02-28
︡9e498199-a47e-4a42-900c-a7c3ebecc5c3︡{"html":"<h1>Lecture: Quadratic Reciprocity (part 1) &#8211; 2014-02-28</h1>\n"}︡
︠51f47de2-df31-4397-a779-fb66ea701a6ci︠
%md

## Introduction: A Surprising Pattern Involving Squares Modulo $p$

**Question:** For which primes is 4 a square modulo $p$?

**Answer:** All primes, obviously.

**Question:** When is 2 a square modulo $p$?

Let's make a table:
︡a78cb45c-443b-44a5-9385-195121979fcd︡{"html":"<h2>Introduction: A Surprising Pattern Involving Squares Modulo $p$</h2>\n\n<p><strong>Question:</strong> For which primes is 4 a square modulo $p$?</p>\n\n<p><strong>Answer:</strong> All primes, obviously.</p>\n\n<p><strong>Question:</strong> When is 2 a square modulo $p$?</p>\n\n<p>Let&#8217;s make a table:</p>\n"}︡
︠588c1edf-a361-4131-9e3b-627660ec3b5e︠
for p in primes(3, 100):
    print p, is_square(Mod(2,p))
︡60d4f7ae-4785-4830-b278-498eb837f460︡{"stdout":"3 False\n5 False\n7 True\n11 False\n13 False\n17 True\n19 False\n23 True\n29 False\n31 True\n37 False\n41 True\n43 False\n47 True\n53 False\n59 False\n61 False\n67 False\n71 True\n73 "}︡{"stdout":"True\n79 True\n83 False\n89 True\n97 True\n"}︡
︠5f0f20b9-97c8-47f9-8bed-38692758a36f︠
for p in primes(3, 100):
    print p, p%8, is_square(Mod(2,p))
︡7971c6ba-3938-4c3d-8b0c-58352ef26a85︡{"stdout":"3 3 False\n5 5 False\n7 7 True\n11 3 False\n13 5 False\n17 1 True\n19 3 False\n23 7 True\n29 5 False\n31 7 True\n37 5 False\n41 1 True\n43 3 False\n47 7 True\n53 5 False\n59 3 False\n61 5 False\n67 3 False\n71 7 True\n73 1 True\n79 7 True\n83 3 False\n89 1 True\n97 1 True\n"}︡
︠3a58b481-3854-44d5-9e8e-93044ab69153i︠
%md
**Question:** When is 3 a square modulo $p$?
︡e6ad2908-0947-402b-a8c7-0e786e603227︡{"html":"<p><strong>Question:</strong> When is 3 a square modulo $p$?</p>\n"}︡
︠e9985b9a-26a8-41ad-9d5b-e3a521378ac2︠

for p in primes(3, 100):
    print p, p%12, is_square(Mod(3,p))
︡bbcf150a-aee7-4dbb-a1be-d1ce1cb3b4fb︡{"stdout":"3 3 True\n5 5 False\n7 7 False\n11 11 True\n13 1 True\n17 5 False\n19 7 False\n23 11 True\n29 5 False\n31 7 False\n37 1 True\n41 5 False\n43 7 False\n47 11 True\n53 5 False\n59 11 True\n61 1 True\n67 7 False\n71 11 True\n73 1 True\n79 7 False\n83 11 True\n89 5 False\n97 1 True\n"}︡
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
        +1 & \text{if $a$ is a quadratic residue, and}\\\\
        -1 & \text{if $a$ is a quadratic nonresidue}.
\end{cases}
$$
︡b0f39226-0ec7-439a-bac9-acaf82255a9a︡{"html":"<p><strong>Definition:</strong> The Legendre Symbol.  </p>\n\n<p>Let $a$ be an integer and $p$ an odd prime.  Let\n$$\n \\left( \\frac{a}{p} \\right) = \\begin{cases}\n         0 &amp; \\text{if $\\gcd(a,p) \\neq 1$},\\\\\n        +1 &amp; \\text{if $a$ is a quadratic residue, and}\\\\\n        -1 &amp; \\text{if $a$ is a quadratic nonresidue}.\n\\end{cases}\n$$</p>\n"}︡
︠f120e502-7415-496b-823a-b6b8c8df2525i︠
%md

The above theorem is the statement that $\left(\frac{a}{p}\right)$ only depends on the residue of $p$ modulo $4a$.

︡ce606dee-11c9-499a-973d-b2991c291437︡{"html":"<p>The above theorem is the statement that $\\left(\\frac{a}{p}\\right)$ only depends on the residue of $p$ modulo $4a$.</p>\n"}︡
︠d585cfd7-152c-4f75-be0a-8fee677b67c3︠
for p in primes(3, 100):
    print p, p%12, legendre_symbol(3, p)
︡2b0424d8-9f2d-4705-9199-8ca0797e72dd︡{"stdout":"3 3 0\n5 5 -1\n7 7 -1\n11 11 1\n13 1 1\n17 5 -1\n19 7 -1\n23 11 1\n29 5 -1\n31 7 -1\n37 1 1\n41 5 -1\n43 7 -1\n47 11 1\n53 5 -1\n59 11 1\n61 1 1\n67 7 -1\n71 11 1\n73 1 1\n79 7 -1\n83 11 1\n89 5 -1\n97 1 1\n"}︡
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
︠e94120d4-fbfd-4f4b-a1ff-d14a6e730c2d︠
for p in primes(5,1000):
    if Mod(3,p).multiplicative_order() == p-1:
        print p,
︡9afefde9-2d6b-48d0-b795-9b35177f5054︡{"stdout":"5 7 17 19 29 31 43 53 79 89 101 113 127 137 139 149 163 173 197 199 211 223 233 257 269 281 283 293 317 331 353 379 389 401 449 461 463 487 509 521 557 569 571 593 607 617 631 641 653 677 691 701 739 751 773 797 809 811 821 823 857 859 881 907 929 941 953 977"}︡
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









