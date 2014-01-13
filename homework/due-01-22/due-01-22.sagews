




︠8148a82a-5852-4493-891b-2bdff2813b89i︠
%md
# Homework 1 -- Due Jan 22, 2014

## Instructions

 - Put your solutions in the empty space below the problem.
 - Create a new cell by clicking on the horizontal cell dividers.
 - If you put "%md" at the top of your answer then you can put latex math -- like $x^3$ -- in dollar signs.
      - If you then press shift-enter you'll see the rendered math.
      - If you **double click** on the output then you can edit the input again.
      - This uses Markdown format, which you can learn about here: <http://daringfireball.net/projects/markdown/>
 - Put this worksheet in a folder called "homework" in your project.
 - For this first assignment, when you're done, open the worksheet, and copy/paste the URL into an email to wstein@gmail.com with the subject "math 480: homework 01-22".   (Later I'll automate this.)

## Problems

︡0058a318-5ec8-49c3-8f5d-daa348167ec7︡{"html":"<h1>Homework 1 &#8211; Due Jan 22, 2014</h1>\n\n<h2>Instructions</h2>\n\n<ul>\n<li>Put your solutions in the empty space below the problem.</li>\n<li>Create a new cell by clicking on the horizontal cell dividers.</li>\n<li>If you put &#8220;%md&#8221; at the top of your answer then you can put latex math &#8211; like $x^3$ &#8211; in dollar signs.\n<ul>\n<li>If you then press shift-enter you&#8217;ll see the rendered math.</li>\n<li>If you <strong>double click</strong> on the output then you can edit the input again.</li>\n<li>This uses Markdown format, which you can learn about here: <a href=\"http://daringfireball.net/projects/markdown/\">http://daringfireball.net/projects/markdown/</a></li>\n</ul></li>\n<li>Put this worksheet in a folder called &#8220;homework&#8221; in your project.</li>\n<li>For this first assignment, when you&#8217;re done, open the worksheet, and copy/paste the URL into an email to wstein@gmail.com with the subject &#8220;math 480: homework 01-22&#8221;.   (Later I&#8217;ll automate this.)</li>\n</ul>\n\n<h2>Problems</h2>\n"}︡
︠c5bde73e-86f9-4739-b3ce-e3f9c96a7d68︠
%md

Consider some math: $x^3+y^3$


︡dff300c1-bc84-4463-8be9-01946324c942︡{"html":"<p>Consider some math: $x^3+y^3$</p>\n"}︡
︠464ffd76-9389-46f7-864f-87f17e20295f︠
%latex

Consider some math: $x^3+y^3$
︡931841b9-2424-4822-85ad-1eef26f609f8︡{"once":false,"file":{"show":true,"uuid":"34494b93-8417-47fe-914c-c99823997a8f","filename":"/tmp/tmp9beKRi.png"}}︡{"stdout":"\n"}︡
︠190c3a38-8f38-41a2-8379-822adfa5568c︠
#sage_chat()
︡815516b3-6ca4-4f5a-8401-fcc1fe9f586f︡
︠a7f02801-23e9-4a1c-88c6-e43a9c8bb559︠

︠46748791-3da7-4aeb-aff4-6dfb05da0e1fi︠
%md
### Problem 1: a gcd by hand

Compute the greatest common divisor gcd(455,1235) by hand.
︡8bc7a144-5fd9-46b0-997c-7eea11cf63b2︡{"html":"<h3>Problem 1: a gcd by hand</h3>\n\n<p>Compute the greatest common divisor gcd(455,1235) by hand.</p>\n"}︡
︠8be27d1d-7f9c-462d-b3a4-1a737d2ea922︠


︠6074ead7-19fe-4ad5-b1e5-3517579afa2c︠

︠53e5a817-378a-4f3a-bee4-4e233e78e769i︠
%md
### Problem 2: a conjecture about primes
Let $\pi(x)$ be the number of primes $\leq x$ and let $\psi(x)$ be the number of primes of the form
$4k-1$ that are $\leq x$.

1. Make a conjectural *guess* based on data about $\lim_{x\to\infty} \psi(x) / \pi(x)$. State your guess precisely and give evidence.

2. Search around in books or the internet for theorems, and use any of them to either prove or disprove your guess.
︡74b61fa9-cd1f-4dcf-8465-5fdc5e8c944c︡{"html":"<h3>Problem 2: a conjecture about primes</h3>\n\n<p>Let $\\pi(x)$ be the number of primes $\\leq x$ and let $\\psi(x)$ be the number of primes of the form\n$4k-1$ that are $\\leq x$.</p>\n\n<ol>\n<li><p>Make a conjectural <em>guess</em> based on data about $\\lim_{x\\to\\infty} \\psi(x) / \\pi(x)$. State your guess precisely and give evidence.</p></li>\n<li><p>Search around in books or the internet for theorems, and use any of them to either prove or disprove your guess.</p></li>\n</ol>\n"}︡
︠c858a242-3d64-4ab5-ac8f-d7efdfc30424︠



︠a605e192-9510-4bb1-8336-4d4ddf775065i︠
%md
### Problem 3: prove something about gcd's.
Let $a,b,c,n$ be integers.  Prove that

1. if $a \mid n$ and $b\mid n$ with $\gcd(a,b)=1$, then $ab\mid n$.
2. if $a\mid bc$ and $\gcd(a,b)=1$, then $a\mid c$.
︡4766ba2f-0fa1-46e4-b093-8a0af23f2153︡{"html":"<h3>Problem 3: prove something about gcd&#8217;s.</h3>\n\n<p>Let $a,b,c,n$ be integers.  Prove that</p>\n\n<ol>\n<li>if $a \\mid n$ and $b\\mid n$ with $\\gcd(a,b)=1$, then $ab\\mid n$.</li>\n<li>if $a\\mid bc$ and $\\gcd(a,b)=1$, then $a\\mid c$.</li>\n</ol>\n"}︡
︠09c270dd-07ee-467f-8127-653a57310018︠

︠559665b8-3152-46e0-ad5c-caaaf048984b︠

︠b8a3d835-7dc9-49dc-9ef4-a51d44ffc53di︠
%md
### Problem 4: prove something about squares

Prove that if a positive integer $n$ is a perfect
square, then $n$ cannot be written in the form $4k+3$
for $k$ an integer.

(Hint: Compute the remainder upon division
by $4$ of each of $(4m)^2$, $(4m+1)^2$, $(4m+2)^2$,
and $(4m+3)^2$.)


︡3d958b38-3ce3-4d11-87bf-7ec7c8aec6f3︡{"html":"<h3>Problem 4: prove something about squares</h3>\n\n<p>Prove that if a positive integer $n$ is a perfect\nsquare, then $n$ cannot be written in the form $4k+3$\nfor $k$ an integer.</p>\n\n<p>(Hint: Compute the remainder upon division\nby $4$ of each of $(4m)^2$, $(4m+1)^2$, $(4m+2)^2$,\nand $(4m+3)^2$.)</p>\n"}︡
︠818e48ad-ae5e-4a79-9f18-ef640d2a32f7︠

︠c1cedb47-5e4e-4da3-8d89-b0e66ff3f500︠

︠da3b6090-9422-43b7-be88-3160ed8e1428︠

︠f0fff411-97c1-4ead-8a48-ba79cf9cd8f1i︠
%md
### Problem 5: compute the first few digits of a huge Mersenne prime

How can you efficiently compute the *first* few digits of $p = 2^{57885161} - 1$ efficiently (i.e., in less than a second)?

(HINT: do *not* use modular arithmetic.)
︡e83be5fe-9999-41eb-9f47-e91cde54581a︡{"html":"<h3>Problem 5: compute the first few digits of a huge Mersenne prime</h3>\n\n<p>How can you efficiently compute the <em>first</em> few digits of $p = 2^{57885161} - 1$ efficiently (i.e., in less than a second)?</p>\n\n<p>(HINT: do <em>not</em> use modular arithmetic.)</p>\n"}︡
︠af6f6ebd-9f22-4b6a-9ba9-0a8373d59fe4︠


︠77fa13d4-374e-43a0-9a7e-57d2f3e42923︠


︠63231667-a948-4eca-9cf2-0da16e3d7291i︠
%md
### Problem 6: extended Euclidean algorithm

- Find integers $x$ and $y$ such that $2014x + 480y = 2$.

- Are there integers $x$ and $y$ such that $2014x + 480y = 3$?

︡f57605ac-2b36-493e-bf2f-82402ffacab4︡{"html":"<h3>Problem 6: extended Euclidean algorithm</h3>\n\n<ul>\n<li><p>Find integers $x$ and $y$ such that $2014x + 480y = 2$.</p></li>\n<li><p>Are there integers $x$ and $y$ such that $2014x + 480y = 3$?</p></li>\n</ul>\n"}︡
︠199a551a-187d-4ba0-b3b8-7d547879aa67︠


︠1b149b84-f3ea-497c-a1f8-15f2751b2b68︠

︠d9d9098c-6ebb-4cef-89b0-199110088654i︠
%md
### Problem 7: your project


List **three ideas** for topics that you could do a project about.   Look for inspiration in the following sources:

   - the course textbook, and other number theory books
   - past projects -- http://wstein.org/courses/
   - search for number theory topics online
   - any past experience you have in number theory.

Try to find topics that you are personally very curious about.
︡c34b8db3-1ee8-442b-b685-fa70483b9d7d︡{"html":"<h3>Problem 7: your project</h3>\n\n<p>List <strong>three ideas</strong> for topics that you could do a project about.   Look for inspiration in the following sources:</p>\n\n<ul>\n<li>the course textbook, and other number theory books</li>\n<li>past projects &#8211; http://wstein.org/courses/</li>\n<li>search for number theory topics online</li>\n<li>any past experience you have in number theory.</li>\n</ul>\n\n<p>Try to find topics that you are personally very curious about.</p>\n"}︡
︠83775abd-4a07-4a57-879f-cf515757433c︠










