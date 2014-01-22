︠3c08648c-fa8c-41a7-9b88-ed4f33039d0di︠
%md
# Homework 2 -- Due Jan 29, 2014

## Instructions

 - Put your solutions in the empty space below the problem.
 - Create a new cell by clicking on the horizontal cell dividers.
 - If you put "%md" at the top of your answer then you can put latex math -- like $x^3$ -- in dollar signs.
      - If you then press shift-enter you'll see the rendered math.
      - If you **double click** on the output then you can edit the input again.
      - This uses Markdown format, which you can learn about here: <http://daringfireball.net/projects/markdown/>
 - Put this worksheet in a folder called "homework" in your project.
 - When you're done, open the worksheet, and copy/paste the URL into an email to wstein@gmail.com with the subject "math 480: homework 01-29".

## Problems
︡112a10fa-2e32-4fae-ad98-f30470e81abb︡{"html":"<h1>Homework 2 &#8211; Due Jan 29, 2014</h1>\n\n<h2>Instructions</h2>\n\n<ul>\n<li>Put your solutions in the empty space below the problem.</li>\n<li>Create a new cell by clicking on the horizontal cell dividers.</li>\n<li>If you put &#8220;%md&#8221; at the top of your answer then you can put latex math &#8211; like $x^3$ &#8211; in dollar signs.\n<ul>\n<li>If you then press shift-enter you&#8217;ll see the rendered math.</li>\n<li>If you <strong>double click</strong> on the output then you can edit the input again.</li>\n<li>This uses Markdown format, which you can learn about here: <a href=\"http://daringfireball.net/projects/markdown/\">http://daringfireball.net/projects/markdown/</a></li>\n</ul></li>\n<li>Put this worksheet in a folder called &#8220;homework&#8221; in your project.</li>\n<li>When you&#8217;re done, open the worksheet, and copy/paste the URL into an email to wstein@gmail.com with the subject &#8220;math 480: homework 01-29&#8221;.  </li>\n</ul>\n\n<h2>Problems</h2>\n"}︡
︠00a22ede-1b46-4fc1-a91c-47d35826f176i︠


%md
### Problem 1: The Freshman Dream

Prove that if $a$ and $b$ are integers and $p$ is a prime,
then $(a+b)^p \equiv a^p + b^p\pmod{p}$.  You may assume
that the binomial coefficient
$
   \frac{p!}{r!(p-r)!}
$
is an integer.
︡e10c1baa-dc35-4b0f-b6bd-8f9a6884af15︡{"html":"<h3>Problem 1: The Freshman Dream</h3>\n\n<p>Prove that if $a$ and $b$ are integers and $p$ is a prime,\nthen $(a+b)^p \\equiv a^p + b^p\\pmod{p}$.  You may assume\nthat the binomial coefficient\n$\n   \\frac{p!}{r!(p-r)!}\n$\nis an integer.</p>\n"}︡
︠d167f9f2-7415-4488-bd5d-957fa748485d︠
# For example:
(2+3)^7 % 7
(2^7 + 3^7) % 7
︡ef0aa975-b05d-48b3-a006-758c6f521a50︡{"stdout":"5\n"}︡{"stdout":"5\n"}︡
︠45ab2946-a192-4914-a2d5-112bce0f69e5︠

︠75f3085e-917c-4a3a-a5a0-e5ccaaf6ecda︠

︠9c528376-fbcc-48db-91c8-9d7b331b751c︠

︠e83ba8a2-bdc5-4092-8e32-1fd63c13139fi︠
%md
### Problem 2: Beyond Fermat's Little Theorem

1. Prove that if $a$ is an integer and $p$ is a prime, then $a^p \equiv a \pmod{p}$.

2. Is the same statement true with $p$ replaced by any positive integer?  I.e., without the hypothesis that $p$ is prime?
︡be8b2334-b0f2-4c7f-a1ee-d4ef252ca2c9︡{"html":"<h3>Problem 2: Beyond Fermat&#8217;s Little Theorem</h3>\n\n<ol>\n<li><p>Prove that if $a$ is an integer and $p$ is a prime, then $a^p \\equiv a \\pmod{p}$.</p></li>\n<li><p>Is the same statement true with $p$ replaced by any positive integer?  I.e., without the hypothesis that $p$ is prime?</p></li>\n</ol>\n"}︡
︠45d0f23b-19ae-4608-b1f2-73b5996ada5c︠

︠9496a94d-eac9-40ac-85f2-9582b6b8b5e1︠

︠6d0ed0e2-e3db-450c-a82c-14e5d25e2b92︠

︠8c4293f1-26bb-4d59-b243-38719dd596e4i︠

%md
### Problem 3: Parametrizing Extended Euclidean Algorithm Representations

1. Prove that if $x, y$ is a solution to
$ax + by = d$, with $d=\gcd(a,b)$,
then for all $c\in\mathbb{Z}$,
$$
   x' = x+ c\cdot\frac{b}{d}, \qquad
   y' = y - c\cdot\frac{a}{d}
$$
is also a solution to $ax+by=d$.

2. Find two distinct solutions to $2014x + 3000y = 2$.

3. Prove that all solutions are of the above  for some $c$.

︡a8e27aa3-36b3-445d-b77c-407086385cae︡{"html":"<h3>Problem 3: Parametrizing Extended Euclidean Algorithm Representations</h3>\n\n<ol>\n<li><p>Prove that if $x, y$ is a solution to\n$ax + by = d$, with $d=\\gcd(a,b)$,\nthen for all $c\\in\\mathbb{Z}$,\n$$\nx&#8217; = x+ c\\cdot\\frac{b}{d}, \\qquad\ny&#8217; = y - c\\cdot\\frac{a}{d}\n$$\nis also a solution to $ax+by=d$.</p></li>\n<li><p>Find two distinct solutions to $2014x + 3000y = 2$.</p></li>\n<li><p>Prove that all solutions are of the above  for some $c$.</p></li>\n</ol>\n"}︡
︠955cf916-f222-4549-89ff-792d059b4118︠



︠41e86d11-f0a2-4281-9ca7-562d21ff40bc︠



︠56f01129-d140-4126-b81f-3324cb6b8275︠




︠a04de57f-b199-4598-942a-9e1baae15d84i︠
%md
### Problem 4: Complete sets of residues

1. Find four complete sets of residues modulo $11$, where each element of the $i$th set satisfies the $i$th condition:

  (1) nonnegative, (2) odd, (3) even, (4) prime.

2. Let $n$ be any positive integer at all.  Does there necessarily exist four complete set of residues modulo $n$, where each element of the $i$th set satisfies the $i$th condition:

  (1) nonnegative, (2) odd, (3) even, (4) prime.

(Your answer will be either a proof or an explicit counterexample for some specific value of $n$.)

︡b221c36f-20c0-4d29-8df6-a87f0bf1d080︡{"html":"<h3>Problem 4: Complete sets of residues</h3>\n\n<ol>\n<li><p>Find four complete sets of residues modulo $11$, where each element of the $i$th set satisfies the $i$th condition:</p>\n\n<p>(1) nonnegative, (2) odd, (3) even, (4) prime.</p></li>\n<li><p>Let $n$ be any positive integer at all.  Does there necessarily exist four complete set of residues modulo $n$, where each element of the $i$th set satisfies the $i$th condition:</p>\n\n<p>(1) nonnegative, (2) odd, (3) even, (4) prime.</p></li>\n</ol>\n\n<p>(Your answer will be either a proof or an explicit counterexample for some specific value of $n$.)</p>\n"}︡
︠f9f01f16-0b84-4961-b13d-326fe925c1b1︠


︠54aa78fe-b76c-4772-9606-78ce4eed9815︠

︠097d425c-6f5c-4126-983f-0b2372fbbf4d︠


︠c22166ce-8ccc-4995-87a2-030696cd738ei︠
%md
### Problem 5: When does $n$ divide $(n-1)!$?

(Note: every explanation point here indicated a factorial, except this one!)

1. Which of the numbers 1,2,3,4,5,6 have the property that $n$ divides $(n-1)!$?

2. Prove that if $n\geq 5$ is composite then $n$ divides $(n-1)!$.

︡921bad9d-750f-4d69-947a-9ba319f9e769︡{"html":"<h3>Problem 5: When does $n$ divide $(n-1)!$?</h3>\n\n<p>(Note: every explanation point here indicated a factorial, except this one!)</p>\n\n<ol>\n<li><p>Which of the numbers 1,2,3,4,5,6 have the property that $n$ divides $(n-1)!$?</p></li>\n<li><p>Prove that if $n\\geq 5$ is composite then $n$ divides $(n-1)!$.</p></li>\n</ol>\n"}︡
︠da60a0ba-64ad-4f07-a6ac-0a55d8aced82︠

︠c6b83219-79f3-449b-b60d-4ed8435ddd3b︠


︠7fe54dc6-3f03-4db9-a2ed-2011543e6f28︠



︠7831eca7-56ed-418f-9621-70d301724830︠


︠ff692f6a-6529-4c65-aef7-58e5f5d506d7i︠
%md
### Problem 6: Your project

1. Use the "+New" button to create a folder called "project".

2. Inside that folder, use "+New" to create a LaTeX document.

3. Put the title of your project and your name in the document.

4. Use the following commands to create a *rough outline* of your project:

         \tableofcontents    % prints a table of contents

         \section{Name of Section}
         \subsection{Name of a subsection}
         \subsubsection{Name of a sub-subsection}

  <br>

   Each time you click the save button, the preview pane on the right should update within about 15 seconds.  If there are errors, click on the errors/warnings button to see them.

5. Do a web search for something like "basic latex tutorial", find something you like, and learn some LaTeX.
︡238f4f96-d46e-4646-a261-4c5694d03c65︡{"html":"<h3>Problem 6: Your project</h3>\n\n<ol>\n<li><p>Use the &#8220;+New&#8221; button to create a folder called &#8220;project&#8221;.</p></li>\n<li><p>Inside that folder, use &#8220;+New&#8221; to create a LaTeX document.</p></li>\n<li><p>Put the title of your project and your name in the document.</p></li>\n<li><p>Use the following commands to create a <em>rough outline</em> of your project:</p>\n\n<pre><code> \\tableofcontents    % prints a table of contents\n\n \\section{Name of Section}\n \\subsection{Name of a subsection}\n \\subsubsection{Name of a sub-subsection}\n</code></pre>\n\n<p><br></p>\n\n<p>Each time you click the save button, the preview pane on the right should update within about 15 seconds.  If there are errors, click on the errors/warnings button to see them.</p></li>\n<li><p>Do a web search for something like &#8220;basic latex tutorial&#8221;, find something you like, and learn some LaTeX.</p></li>\n</ol>\n"}︡
︠e169f3d3-eae0-4a06-8efa-c870a083ff80︠












