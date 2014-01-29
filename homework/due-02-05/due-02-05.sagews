︠02bf2a98-2533-4a52-a289-fa9554b68c7bi︠
%md
# Homework 3 -- Due Feb 5, 2014

## Instructions

 - Put your solutions in the empty space below the problem.
 - Create a new cell by clicking on the horizontal cell dividers.
 - If you put "%md" (or "%latex" or "%html") at the top of your answer then you can put latex math -- like $x^3$ -- in dollar signs.
      - If you then press shift-enter you'll see the rendered math.
      - If you **double click** on the output then you can edit the input again.
      - %md uses Markdown format, which you can learn about here: <http://daringfireball.net/projects/markdown/>
      - %latex uses straight 100% latex
      - %html is standard html, but with support for math typesetting.
 - Put this worksheet in a folder called "homework" in your project.
 - When you're done, open the worksheet, and copy/paste the URL into an email to wstein@gmail.com with the subject "math 480: homework 02-05".

## Problems
︡ede85abd-70c6-4359-851f-49fee70795c2︡{"html":"<h1>Homework 3 &#8211; Due Feb 5, 2014</h1>\n\n<h2>Instructions</h2>\n\n<ul>\n<li>Put your solutions in the empty space below the problem.</li>\n<li>Create a new cell by clicking on the horizontal cell dividers.</li>\n<li>If you put &#8220;%md&#8221; (or &#8220;%latex&#8221; or &#8220;%html\") at the top of your answer then you can put latex math &#8211; like $x^3$ &#8211; in dollar signs.\n<ul>\n<li>If you then press shift-enter you&#8217;ll see the rendered math.</li>\n<li>If you <strong>double click</strong> on the output then you can edit the input again.</li>\n<li>%md uses Markdown format, which you can learn about here: <a href=\"http://daringfireball.net/projects/markdown/\">http://daringfireball.net/projects/markdown/</a></li>\n<li>%latex uses straight 100% latex</li>\n<li>%html is standard html, but with support for math typesetting.</li>\n</ul></li>\n<li>Put this worksheet in a folder called &#8220;homework&#8221; in your project.</li>\n<li>When you&#8217;re done, open the worksheet, and copy/paste the URL into an email to wstein@gmail.com with the subject &#8220;math 480: homework 02-05&#8221;.</li>\n</ul>\n\n<h2>Problems</h2>\n"}︡
︠97fd33b2-5e19-45b3-b332-e1cc27db2a73i︠
%md

### Problem 1: Multiplicative Functions

Recall that a *multiplicative function* is a function $f$ on the positive integers such that if $\gcd(a,b)=1$, then $f(ab)=f(a)f(b)$.
Give <b>four different examples</b> of multiplicative functions.

[Hint: you can either try to make something up yourself or search around online and in books.  This isn't a problem that involves searching for 3 such functions that I've mentioned in class or the book.]
︡25ae9623-b4f1-42d0-9f73-6cb7c1a93b03︡{"html":"<h3>Problem 1: Multiplicative Functions</h3>\n\n<p>Recall that a <em>multiplicative function</em> is a function $f$ on the positive integers such that if $\\gcd(a,b)=1$, then $f(ab)=f(a)f(b)$.\nGive <b>four different examples</b> of multiplicative functions.</p>\n\n<p>[Hint: you can either try to make something up yourself or search around online and in books.  This isn&#8217;t a problem that involves searching for 3 such functions that I&#8217;ve mentioned in class or the book.]</p>\n"}︡
︠626a2224-ce0b-445d-ac6c-22c6666ab8b7︠

︠56aadc5d-82ed-4a73-ba26-8fbfc76a6482︠

︠6f5419e7-b641-4849-8b14-06ba34684b2e︠

︠246b3836-74d6-461c-9279-0cd9d9724f19︠

︠c592e996-7160-47c2-be34-462defb7ab82i︠
%html <img src="http://b.vimeocdn.com/ts/152/141/152141960_640.jpg" width=256 class="pull-right">

%md
### Problem 2: Diffie-Hellman



Suppose Whitfield and Martin would like to agree on a secret shared number using their key exchange.
They agree on working modulo the number $p=2^{1279}-1$ and they use element $g=2$.
Whitfield chooses the secret random number $n=923840$ and Martin chooses the secret random number $m=13423498590$.

1. Compute $3^{p-1}\pmod{p}$.  Does this increase your confidence that $p$ is really prime?   If not, try the `is_pseudoprime` function in Sage.

2. Compute $t=2^n\pmod{p}$ and $t'=2^m\pmod{p}$.

3. Compute the secret number that Whitfiled and Martin share.



︡b61457aa-5bf1-41dd-951f-09f7f3525138︡{"html":"<img src=\"http://b.vimeocdn.com/ts/152/141/152141960_640.jpg\" width=256 class=\"pull-right\">"}︡{"html":"<h3>Problem 2: Diffie-Hellman</h3>\n\n<p>Suppose Whitfield and Martin would like to agree on a secret shared number using their key exchange.\nThey agree on working modulo the number $p=2^{1279}-1$ and they use element $g=2$.\nWhitfield chooses the secret random number $n=923840$ and Martin chooses the secret random number $m=13423498590$.</p>\n\n<ol>\n<li><p>Compute $3^{p-1}\\pmod{p}$.  Does this increase your confidence that $p$ is really prime?   If not, try the <code>is_pseudoprime</code> function in Sage.</p></li>\n<li><p>Compute $t=2^n\\pmod{p}$ and $t'=2^m\\pmod{p}$.</p></li>\n<li><p>Compute the secret number that Whitfiled and Martin share.</p></li>\n</ol>\n"}︡
︠16df529a-b094-430a-b000-c7d861a6b59c︠

︠9f9b0474-71b1-4c62-ab18-8c889be136cb︠

︠2e047d7d-eae2-403e-8cd2-0d8f9c227837︠

︠652877af-eb9b-4b6d-b67d-f8042c6af211︠

︠a287b40a-ba83-4ae0-9f65-7856b19b40a3︠

︠6f325b32-27cc-4576-88da-800d890de20ci︠
%html <img src="http://www.usc.edu/dept/molecular-science/pictures/RSA-2003.jpg" class="pull-right" width=300>

%md
### Problem 3: RSA


Suppose Ron, Adi, and Leonard would like to send each other secret emails about super secret stuff.

Ron's public key is $(e,n)=(94958501, 265407440875556726158542310575789523471)$.

Adi's public key is $(e,n)=(74853241, 76441922272452716668955925887300216327)$.

Leonard's public key is $(e,n)=(327581, 226504059158553983043370996629415887361)$.

1. Determine Ron, Adi and Leonard's private keys.  (How long does this take?  Obviously, the $n$ is not big enough for serious work!)

2. Adi would like to encrypt a message encoded as the number $12345$ to Ron.  What number does he send?

3. Adi would like to encrypt a message encoded as the number $12345$ to Leonard.  What number does he send?

4. Adi receives a message encrypted as the number $11137345931317652152843005353340736765$.  What is the number that was encrypted?

5. Adi creates a message encoded as the number $13333337$.  He wants to digitally sign this message, to prove it is from him.  What is the signature?  (Hint, encrypt $13333337$ using Adi's private key instead of his public key.)

6. Adi sees a document that purports to be from Ron. The document is $20141337$ with digital signature $83546213764177669531374943194511190808$.  Is the digital signature correct? (Hint: encrypt the signature using Ron's public key.)


︡13bbe7cd-59b5-4b5e-8957-8e6fd26abed8︡{"html":"<img src=\"http://www.usc.edu/dept/molecular-science/pictures/RSA-2003.jpg\" class=\"pull-right\" width=300>"}︡{"html":"<h3>Problem 3: RSA</h3>\n\n<p>Suppose Ron, Adi, and Leonard would like to send each other secret emails about super secret stuff.</p>\n\n<p>Ron&#8217;s public key is $(e,n)=(94958501, 265407440875556726158542310575789523471)$.</p>\n\n<p>Adi&#8217;s public key is $(e,n)=(74853241, 76441922272452716668955925887300216327)$.</p>\n\n<p>Leonard&#8217;s public key is $(e,n)=(327581, 226504059158553983043370996629415887361)$.</p>\n\n<ol>\n<li><p>Determine Ron, Adi and Leonard&#8217;s private keys.  (How long does this take?  Obviously, the $n$ is not big enough for serious work!)</p></li>\n<li><p>Adi would like to encrypt a message encoded as the number $12345$ to Ron.  What number does he send?</p></li>\n<li><p>Adi would like to encrypt a message encoded as the number $12345$ to Leonard.  What number does he send?</p></li>\n<li><p>Adi receives a message encrypted as the number $11137345931317652152843005353340736765$.  What is the number that was encrypted?</p></li>\n<li><p>Adi creates a message encoded as the number $13333337$.  He wants to digitally sign this message, to prove it is from him.  What is the signature?  (Hint, encrypt $13333337$ using Adi&#8217;s private key instead of his public key.)</p></li>\n<li><p>Adi sees a document that purports to be from Ron. The document is $20141337$ with digital signature $83546213764177669531374943194511190808$.  Is the digital signature correct? (Hint: encrypt the signature using Ron&#8217;s public key.)</p></li>\n</ol>\n"}︡
︠b8453f27-369c-43da-84a3-1ff48b41f827︠

︠5b864443-f9b1-40a3-97fb-e0f7cf582c50︠

︠ca02ef48-750e-4fad-ad02-71db414eaae9i︠

%md
### Problem 4: Computational Complexity: $10^{100}$ operations

1. Search around online for an estimate for the number of operations (let's say "floating point operations" or FLOPS) that  the world's faster supercomputer can do in 1 second.  Call this integer $B$.     (If you're curious, you might also search for estimates of the number of FLOPS being "wasted" on bitcoin mining or searching for large prime numbers right now...)

2. Assuming you have a dedicated computer that can do $B$ "operations per second", how many years will it take to do $10^{100}$ operations.  (Obviously, completely ignore things like your computer breaking, getting better, etc.!)

3. Assume that our universe has a lifespan of $34$ billion years old.   How many "lifespan of the universes" would it take to do $10^{100}$ operations?

︡c1d3e0c1-cb39-48af-84fe-38efb86b10df︡{"html":"<h3>Problem 4: Computational Complexity: $10^{100}$ operations</h3>\n\n<ol>\n<li><p>Search around online for an estimate for the number of operations (let&#8217;s say &#8220;floating point operations&#8221; or FLOPS) that  the world&#8217;s faster supercomputer can do in 1 second.  Call this integer $B$.     (If you&#8217;re curious, you might also search for estimates of the number of FLOPS being &#8220;wasted&#8221; on bitcoin mining or searching for large prime numbers right now&#8230;)</p></li>\n<li><p>Assuming you have a dedicated computer that can do $B$ &#8220;operations per second&#8221;, how many years will it take to do $10^{100}$ operations.  (Obviously, completely ignore things like your computer breaking, getting better, etc.!)</p></li>\n<li><p>Assume that our universe has a lifespan of $34$ billion years old.   How many &#8220;lifespan of the universes&#8221; would it take to do $10^{100}$ operations?</p></li>\n</ol>\n"}︡
︠2040f268-b89e-498e-9ebb-a00ad1c6f845︠

︠98fcfadb-5c19-4489-95b9-2ddc49d7d864︠

︠121d919b-8481-44d3-94d7-1cbe4deb133a︠

︠598f115c-755f-4ee8-a28b-0fd57ee4caa4i︠
%md
## Problem 5: Create a GPG key

Evidently, many really smart people find public key cryptography **extremely hard** to use for email in practice.   I have professional colleagues who are amazing programs and world-class experts in number theory, and still they seem incapable of setting up GPG to exchange encrypted emails with me.

So your turn.  Create a GPG (Gnu Privacy Guard) key and paste the public key below.  I can now use this key to send you
messages.

(You can install GPG on your computer, or if you don't care too much, just type "+New" in SageMathCloud, create a Terminal, and in the terminal you can use the "gpg" command.  You may have to type "man gpg" or google for tutorials to figure out how to use it.  Please succeed, since I want to be able to tell my colleagues that every undergrad in my elementary number theory class was able to do this!)



︡870a6bbc-2652-4229-8ead-13a154c99fda︡{"html":"<h2>Problem 5: Create a GPG key</h2>\n\n<p>Evidently, many really smart people find public key cryptography <strong>extremely hard</strong> to use for email in practice.   I have professional colleagues who are amazing programs and world-class experts in number theory, and still they seem incapable of setting up GPG to exchange encrypted emails with me.</p>\n\n<p>So your turn.  Create a GPG (Gnu Privacy Guard) key and paste the public key below.  I can now use this key to send you\nmessages.</p>\n\n<p>(You can install GPG on your computer, or if you don&#8217;t care too much, just type &#8220;+New&#8221; in SageMathCloud, create a Terminal, and in the terminal you can use the &#8220;gpg&#8221; command.  You may have to type &#8220;man gpg&#8221; or google for tutorials to figure out how to use it.  Please succeed, since I want to be able to tell my colleagues that every undergrad in my elementary number theory class was able to do this!)</p>\n"}︡
︠8bc692eb-8eb6-48ce-a169-de3e980d76c2︠

︠6a613f1e-47da-4e4a-bb46-8ec69e7d3a82︠

︠e72cc2ac-0ccc-4bd9-b3e4-9c629413fb18︠

︠4525f1ad-9f0c-45ad-8653-996d4898aa64︠

︠f763d9ff-4ffd-4540-bdeb-418f0015ea66i︠
%md
### Problem 6: Your Project

Write a really rough draft of your project.  Include a link here so I can look at it.

︡601a744a-41f3-4868-bbaf-0e0031d669d9︡{"html":"<h3>Problem 6: Your Project</h3>\n\n<p>Write a really rough draft of your project.  Include a link here so I can look at it.</p>\n"}︡
︠ef98d31a-1786-4e39-ba87-6b6489434702︠

︠45dc00cf-4cee-43fc-b27e-613443f30c81︠

︠bd936675-55a0-4b66-bf2c-d5a3f5e1b9e5︠
︠7b982694-bda5-4851-9842-22d1f7e9528c︠









