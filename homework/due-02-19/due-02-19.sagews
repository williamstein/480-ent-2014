︠2ff7e2c0-9fcf-47ad-b25b-f8ee00062865i︠
%md
# Homework 5 -- Due Feb 19, 2014

## Instructions

 - Put your solutions in the empty space below the problem.
 - When you're done, open the worksheet, and copy/paste the URL to this worksheet into an email to wstein@gmail.com with the subject "math 480: homework 02-19".

## Problems
︡965d00c1-c9a1-4440-81a9-7a4fa1967bf4︡{"html":"<h1>Homework 5 &#8211; Due Feb 19, 2014</h1>\n\n<h2>Instructions</h2>\n\n<ul>\n<li>Put your solutions in the empty space below the problem.</li>\n<li>When you&#8217;re done, open the worksheet, and copy/paste the URL to this worksheet into an email to wstein@gmail.com with the subject &#8220;math 480: homework 02-19&#8221;.</li>\n</ul>\n\n<h2>Problems</h2>\n"}︡
︠1a8519a9-b8dd-47fe-beff-489f52c5a18bi︠

%md
### Problem 1: Computing the cardinality of an elliptic curve modulo $p$.

a. Let $E$ be the elliptic curve $y^2=x^3+2x+3$ over the finite field $\mathbf{F}_p$, where $p=2^{107}-1$.  Compute the cardinality of the group $E(\mathbf{F}_p)$ using Sage.  (Hint: this is a one-liner in Sage -- see the worksheet for 2014-02-07.)

b.  Give an *estimate* for how long you think it would take a single Sage command (one processor) to compute the cardinality of the group of rational points on  $y^2=x^3+14x+2$ over the finite field $\mathbf{F}_p$, where $p=2^{44,497}-1$.  Your estimate should be at least as precise as "a few seconds", "a few minutes", "a couple of days", "a couple of months", "a couple of years", etc.  (Don't worry about RAM requirements.)  Your estimate should be supported by actual computations.   The idea is to compute the cardinality of several other similar groups, but for various size primes, and come up with a mathematical model for how the time grows as a function of the prime.

︡40c42976-69a7-4471-bce8-d3b1b57611b4︡{"html":"<h3>Problem 1: Computing the cardinality of an elliptic curve modulo $p$.</h3>\n\n<p>a. Let $E$ be the elliptic curve $y^2=x^3+2x+3$ over the finite field $\\mathbf{F}_p$, where $p=2^{107}-1$.  Compute the cardinality of the group $E(\\mathbf{F}_p)$ using Sage.  (Hint: this is a one-liner in Sage &#8211; see the worksheet for 2014-02-07.)</p>\n\n<p>b.  Give an <em>estimate</em> for how long you think it would take a single Sage command (one processor) to compute the cardinality of the group of rational points on  $y^2=x^3+14x+2$ over the finite field $\\mathbf{F}_p$, where $p=2^{44,497}-1$.  Your estimate should be at least as precise as &#8220;a few seconds&#8221;, &#8220;a few minutes&#8221;, &#8220;a couple of days&#8221;, &#8220;a couple of months&#8221;, &#8220;a couple of years&#8221;, etc.  (Don&#8217;t worry about RAM requirements.)  Your estimate should be supported by actual computations.   The idea is to compute the cardinality of several other similar groups, but for various size primes, and come up with a mathematical model for how the time grows as a function of the prime.</p>\n"}︡
︠30bc1674-4cf0-4453-a755-c0bd14033c1b︠

︠ee15ee42-8970-4dd4-9161-2466af1bd695︠

︠330d7a92-6ef0-4888-a73a-2c23b8971af3︠

︠f446aa82-1307-4448-926d-dbb970cb3fd1︠

︠ee84e017-bbb3-4f45-9dc5-c2b759d80005︠

︠de8ad4cb-8fc0-447d-a9fa-02315ab1d858i︠
%md
### Problem 2: The ABC Conjecture

An **abc triple** is a triple of positive integers $a,b,c$ such that $a+b=c$ and $\gcd(a,b)=1$.

The **quality** of an abc triple is $$q(a,b,c) = \frac{\log(c)}{\log(\prod_{p\mid abc} p)}.$$
(Here $\prod_{p\mid abc} p$ means the product of the prime divisors of $abc$. Thus if $abc=6\cdot 3^2\cdot 5$, then $\prod_{p\mid abc} p = 2\cdot 3 \cdot 5 = 30$.)

**Conjecture (The abc conjecture)** For every $\epsilon>0$, there are only finitely many abc triples such that $q(a,b,c)>\epsilon$.

Exercises:

- Prove that if $a,b,c$ is an $a,b,c$ triple then $\gcd(b,c)=1$ and $\gcd(a,c)=1$.

- Prove that for any triple $a,b,c$, we have $q(a,b,c)>\frac{1}{3}$.

- Give an example of a triple $a,b,c$ with $q(a,b,c)>1$.

︡5309eacb-08d8-49b5-b5ec-c2aeb5db138d︡{"html":"<h3>Problem 2: The ABC Conjecture</h3>\n\n<p>An <strong>abc triple</strong> is a triple of positive integers $a,b,c$ such that $a+b=c$ and $\\gcd(a,b)=1$.</p>\n\n<p>The <strong>quality</strong> of an abc triple is $$q(a,b,c) = \\frac{\\log(c)}{\\log(\\prod_{p\\mid abc} p)}.$$\n(Here $\\prod_{p\\mid abc} p$ means the product of the prime divisors of $abc$. Thus if $abc=6\\cdot 3^2\\cdot 5$, then $\\prod_{p\\mid abc} p = 2\\cdot 3 \\cdot 5 = 30$.)</p>\n\n<p><strong>Conjecture (The abc conjecture)</strong> For every $\\epsilon>0$, there are only finitely many abc triples such that $q(a,b,c)>\\epsilon$.</p>\n\n<p>Exercises:</p>\n\n<ul>\n<li><p>Prove that if $a,b,c$ is an $a,b,c$ triple then $\\gcd(b,c)=1$ and $\\gcd(a,c)=1$.</p></li>\n<li><p>Prove that for any triple $a,b,c$, we have $q(a,b,c)>\\frac{1}{3}$.</p></li>\n<li><p>Give an example of a triple $a,b,c$ with $q(a,b,c)>1$.</p></li>\n</ul>\n"}︡
︠a9a3793e-e3dd-4655-be22-0d90b35a2894︠

︠c4b70fce-12b5-43a4-b6b3-e33a04d9fa7f︠

︠66ef00ad-8f4d-46e8-855e-dd8886c07f48︠

︠80c71d65-88ca-41e4-a545-68fd6344037e︠

︠21510ab4-7fff-40e4-91cb-bde0745feb23︠

︠4fd0d818-0827-4bea-a333-e460ffa0d275︠

︠c07efc73-e1b8-45a7-9339-636b9dcd9c70i︠
%md

### Problem 3: Your project

a. Make changes to your project based on the feedback from somebody else in class. (To get credit, include their feedback below so I can check that you addressed it.)

b. Write more until your project has at least 5 solid pages of content.  (I will grade based on quantity, not quality this time.)  I'm making the overall homework shorter this time so you can spend morime working on your project.
︡5ff60649-8b70-43d2-a6a7-40eb9440f7b3︡{"html":"<h3>Problem 3: Your project</h3>\n\n<p>a. Make changes to your project based on the feedback from somebody else in class. (To get credit, include their feedback below so I can check that you addressed it.)</p>\n\n<p>b. Write more until your project has at least 5 solid pages of content.  (I will grade based on quantity, not quality this time.)  I&#8217;m making the overall homework shorter this time so you can spend morime working on your project.</p>\n"}︡
︠8b718f14-2d68-4dfe-8344-bda6ebf5db0d︠

︠dd458af2-b709-499c-b69d-3e5de4398e4e︠

︠4573c952-8c35-474f-aa97-393976baef6d︠

︠414ea2ca-71e9-4867-8fb7-a181a2fdae49︠










