︠02bf2a98-2533-4a52-a289-fa9554b68c7bi︠
%md
# Homework 4 -- Due Feb 12, 2014

## Instructions

 - Put your solutions in the empty space below the problem.
 - When you're done, open the worksheet, and copy/paste the URL to this worksheet into an email to wstein@gmail.com with the subject "math 480: homework 02-12".

## Problems
︡fc0e89d4-ec0a-42df-aeb0-e8510a194960︡{"html":"<h1>Homework 4 &#8211; Due Feb 12, 2014</h1>\n\n<h2>Instructions</h2>\n\n<ul>\n<li>Put your solutions in the empty space below the problem.</li>\n<li>When you&#8217;re done, open the worksheet, and copy/paste the URL to this worksheet into an email to wstein@gmail.com with the subject &#8220;math 480: homework 02-12&#8221;.</li>\n</ul>\n\n<h2>Problems</h2>\n"}︡
︠97fd33b2-5e19-45b3-b332-e1cc27db2a73i︠
%md
### Problem 1: Rational Points on Conics (i.e., Pythagorean triples)

(If you want, you can do this problem entire with pencil and paper, like people did thousands of years ago.  A computer isn't needed.)

1. Derive an explicit parametrization of all rational points on the unit circle $x^2+y^2=1$, i.e., a function $f(t)=(?,?,?)$ so that there is a 1-1 correspondence between $t\in \mathbf{Q}\cup\{\infty\}$ and rational points on the circle.  (Hint: This should be pretty easy to find online if you get stuck.  The idea is to draw a line of slow $t$ through $(-1,0)$ and look at the other point of intersection.)

2. Use a similar method to derive an explicit parametrization of all rational points on the hyperbola $x^2-y^2=1$.

︡86bbb669-59d5-44c6-91c3-b06b02bc2722︡{"html":"<h3>Problem 1: Rational Points on Conics (i.e., Pythagorean triples)</h3>\n\n<p>(If you want, you can do this problem entire with pencil and paper, like people did thousands of years ago.  A computer isn&#8217;t needed.)</p>\n\n<ol>\n<li><p>Derive an explicit parametrization of all rational points on the unit circle $x^2+y^2=1$, i.e., a function $f(t)=(?,?,?)$ so that there is a 1-1 correspondence between $t\\in \\mathbf{Q}\\cup\\{\\infty\\}$ and rational points on the circle.  (Hint: This should be pretty easy to find online if you get stuck.  The idea is to draw a line of slow $t$ through $(-1,0)$ and look at the other point of intersection.)</p></li>\n<li><p>Use a similar method to derive an explicit parametrization of all rational points on the hyperbola $x^2-y^2=1$.</p></li>\n</ol>\n"}︡
︠5424eb9b-f333-42ca-8b08-9a09993439df︠

︠8fdc45f2-80b6-4f13-bfc9-859e5bb343e2︠

︠4b008067-e68e-4315-ba02-3beedd2d0f76︠

︠c05db402-651d-40d3-90c9-79f6e9a12dd0︠

︠2941847c-6796-4b95-9ff2-b0b24fa9c572︠
#Here's a plot of that hyperbola
%var x,y
implicit_plot(x^2-y^2==1,(x,-2,2),(y,-2,2), axes=True, gridlines=True)
︡8a343ca4-6d6a-45ac-bb2a-cb7169d90c82︡{"once":false,"file":{"show":true,"uuid":"3e94be7b-96ee-4f6c-a9d9-3f9948315676","filename":"/projects/289c86ee-94a2-4ad5-be71-70def0d6eb09/.sage/temp/compute6a/1899/tmp_Bl2dAu.png"}}︡
︠22e5fcb2-e029-42df-b77b-e509f06e84e9︠

︠4bdd2c84-4cf4-4de3-8053-7ef38904eafb︠

︠fc56206c-3f75-41e4-8c0b-06de5b4c3531︠

︠9a128276-41b3-4c19-a095-a115b7c1bf6d︠

︠d68b85b1-64fb-4a48-b6fb-5b67d8455be8i︠
%md
### Problem 2: NO Rational Points on Conics

1. Prove that there are no rational numbers $x,y$ such that $2x^2 + 3y^2 + 5=0$.

2. Prove that there are no rational numbers $x,y$ such that $x^2 + y^2 = 3$.  (Hint: write $x=a/b$ and $y=c/d$ with $a,b,c,d$ integers, clear denominators, make sure there are no common factors, and work modulo 3.)

3. Prove that there are no rational numbers $x,y$ such that $x^2 - 2y^2 = 3$.


︡e9f3ebe6-f358-4851-8e92-ce1c682a2cab︡{"html":"<h3>Problem 2: NO Rational Points on Conics</h3>\n\n<ol>\n<li><p>Prove that there are no rational numbers $x,y$ such that $2x^2 + 3y^2 + 5=0$.</p></li>\n<li><p>Prove that there are no rational numbers $x,y$ such that $x^2 + y^2 = 3$.  (Hint: write $x=a/b$ and $y=c/d$ with $a,b,c,d$ integers, clear denominators, make sure there are no common factors, and work modulo 3.)</p></li>\n<li><p>Prove that there are no rational numbers $x,y$ such that $x^2 - 2y^2 = 3$.</p></li>\n</ol>\n"}︡
︠fb40d804-1bb7-4496-ba1b-05dab5b17513︠

︠fd6baf37-2e7d-4419-b11b-dc9ebace643e︠

︠d402bfcf-6af1-4f5e-aef2-51156035cb91︠

︠1eed7201-beee-49f0-867c-cc89ebda65aa︠

︠a23f6d35-72d4-4438-88bb-d784bb99eda6i︠
%md
### Problem 3: Archimede's Cattle Problem

Read Sections 1 and 2 of "Solving the Pell equation" by Hendrik W. Lenstra, Jr.

<a href='http://www.math.leidenuniv.nl/~psh/ANTproc/01lenstra.pdf' target='_blank'>http://www.math.leidenuniv.nl/~psh/ANTproc/01lenstra.pdf</a>

1. Basic reading question: The total number of cattle is some number with $n$ digits.  What is $n$?
︡0c12584d-8ffd-47c5-9068-8dc95e47fa5b︡{"html":"<h3>Problem 3: Archimede&#8217;s Cattle Problem</h3>\n\n<p>Read Sections 1 and 2 of &#8220;Solving the Pell equation&#8221; by Hendrik W. Lenstra, Jr.</p>\n\n<p><a href=&#8217;http://www.math.leidenuniv.nl/~psh/ANTproc/01lenstra.pdf&#8217; target=&#8217;_blank&#8217;>http://www.math.leidenuniv.nl/~psh/ANTproc/01lenstra.pdf</a></p>\n\n<ol>\n<li>Basic reading question: The total number of cattle is some number with $n$ digits.  What is $n$?</li>\n</ol>\n"}︡
︠74c268ed-4690-4655-9ce3-faad85c71f52︠

︠9a051a40-ce53-487a-92b1-6985d0ff7c27︠

︠d26ae0ea-e6de-4897-b3c8-2055b4772eb9︠

︠ddf21131-5650-4eca-bef8-3b49017eb6f3︠

︠4e946aeb-4eca-41e7-84cb-92cac14b22bei︠
%md
### Problem 4: Group law problem

1. Make up an elliptic curve over $\mathbf{Q}$ with at least two distinct nonzero rational points $P$ and $Q$ on it, and add them together, i.e., compute $P+Q$.

2. Let $E$ be the elliptic curve $y^2 = x^3 + 2x + 3$ over the finite field $\mathbf{F}_p$, where $p=2^{61}-1$.  Consider the point $P=(1338935335744614844, 1658805286949476255)$.  What is $P+P$?  What is $2014P$?

︡73086af2-579d-4289-8299-305a00e5be84︡{"html":"<h3>Problem 4: Group law problem</h3>\n\n<ol>\n<li><p>Make up an elliptic curve over $\\mathbf{Q}$ with at least two distinct nonzero rational points $P$ and $Q$ on it, and add them together, i.e., compute $P+Q$.</p></li>\n<li><p>Let $E$ be the elliptic curve $y^2 = x^3 + 2x + 3$ over the finite field $\\mathbf{F}_p$, where $p=2^{61}-1$.  Consider the point $P=(1338935335744614844, 1658805286949476255)$.  What is $P+P$?  What is $2014P$?</p></li>\n</ol>\n"}︡
︠6c13f8f8-5a06-4561-9a08-288680420199︠

︠22bcfbe7-2919-4089-919a-5924682e1160︠

︠d769d8cb-4446-4b05-98a4-f1fc7f821e12︠

︠b5ab0c8b-17cd-42d9-9660-8a059db24da8︠

︠3af1944a-deb3-4b26-94f6-dbca744307b4︠

︠2e84328b-cadf-48fc-98b0-ea900607c41b︠

︠075f3f5e-ace9-40ef-abce-a4b3d603e56a︠

︠f763d9ff-4ffd-4540-bdeb-418f0015ea66i︠
%md
### Problem 5: Your Project

1. Write enough of a rough draft of your project that it is at least 3 pages long... and actually says something.

2. Get somebody else in this class (of your choosing) to read what you wrote and write a paragraph of feedback about it.  Paste that feedback below.

︡28905ab8-5de1-47a0-903c-83cc75beb275︡{"html":"<h3>Problem 5: Your Project</h3>\n\n<ol>\n<li><p>Write enough of a rough draft of your project that it is at least 3 pages long&#8230; and actually says something.</p></li>\n<li><p>Get somebody else in this class (of your choosing) to read what you wrote and write a paragraph of feedback about it.  Paste that feedback below.</p></li>\n</ol>\n"}︡
︠ef98d31a-1786-4e39-ba87-6b6489434702︠

︠790e31c3-856d-4685-8be4-5cb97bf3d273︠

︠45dc00cf-4cee-43fc-b27e-613443f30c81︠

︠bd936675-55a0-4b66-bf2c-d5a3f5e1b9e5︠

︠7b982694-bda5-4851-9842-22d1f7e9528c︠









