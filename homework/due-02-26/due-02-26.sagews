︠2ff7e2c0-9fcf-47ad-b25b-f8ee00062865i︠
%md
# Homework 6 -- Due Feb 26, 2014

## Instructions

 - Put your solutions in the empty space below the problem.
 - When you're done, open the worksheet, and copy/paste the URL to this worksheet into an email to wstein@gmail.com with the subject "math 480: homework 02-26".

## Problems (mainly about continued fractions)
︡49f98f6c-4da7-4485-b2b0-c62f5b722676︡{"html":"<h1>Homework 6 &#8211; Due Feb 26, 2014</h1>\n\n<h2>Instructions</h2>\n\n<ul>\n<li>Put your solutions in the empty space below the problem.</li>\n<li>When you&#8217;re done, open the worksheet, and copy/paste the URL to this worksheet into an email to wstein@gmail.com with the subject &#8220;math 480: homework 02-26&#8221;.</li>\n</ul>\n\n<h2>Problems (mainly about continued fractions)</h2>\n"}︡
︠24893690-411b-4429-a37e-8620453868aci︠
%md
### Problem 1:

If $c_n=p_n/q_n$ is the $n$th convergent of
$[a_0,a_1,\ldots,a_n]$ and $a_0>0$, show that
$$
  [a_n,a_{n-1},\ldots, a_1, a_0] = \frac{p_n}{p_{n-1}}
$$
and
$$
   [a_n,a_{n-1},\ldots, a_2, a_1] = \frac{q_n}{q_{n-1}}.
$$
(Hint: In the first case, notice that
$\displaystyle \frac{p_n}{p_{n-1}} = a_n + \frac{p_{n-2}}{p_{n-1}}
          = a_n + \frac{1}{\frac{p_{n-1}}{p_{n-2}}}.$)

︡a276f2a8-e4c5-49e3-93ea-f031fc624d94︡{"html":"<h3>Problem 1:</h3>\n\n<p>If $c_n=p_n/q_n$ is the $n$th convergent of\n$[a_0,a_1,\\ldots,a_n]$ and $a_0>0$, show that\n$$\n  [a_n,a_{n-1},\\ldots, a_1, a_0] = \\frac{p_n}{p_{n-1}}\n$$\nand\n$$\n   [a_n,a_{n-1},\\ldots, a_2, a_1] = \\frac{q_n}{q_{n-1}}.\n$$\n(Hint: In the first case, notice that\n$\\displaystyle \\frac{p_n}{p_{n-1}} = a_n + \\frac{p_{n-2}}{p_{n-1}}\n          = a_n + \\frac{1}{\\frac{p_{n-1}}{p_{n-2}}}.$)</p>\n"}︡
︠57fb35fb-ce1c-4ec3-bf6c-a46e9be7cea4︠

︠c88cfeda-3399-40eb-95cd-1b32a7562975︠

︠a310356d-ac3e-428f-bdae-67ba9a9f7c9f︠

︠d8e10148-5940-4fcf-b39e-07f260cb3a80︠

︠2127bf55-a0f7-49cf-86bb-76b9efcd99a8︠

︠f8c7631d-4ce9-46f6-84b8-d32ba23858b3i︠
%md
### Problem 2:
Show that every nonzero rational number can be represented in
exactly two ways by a finite simple continued fraction.  (For
example, $2$ can be represented by $[1,1]$ and $[2]$, and $1/3$
by $[0,3]$ and $[0,2,1]$.)

︡6093d93a-11fc-491d-8312-127bb9f67eef︡{"html":"<h3>Problem 2:</h3>\n\n<p>Show that every nonzero rational number can be represented in\nexactly two ways by a finite simple continued fraction.  (For\nexample, $2$ can be represented by $[1,1]$ and $[2]$, and $1/3$\nby $[0,3]$ and $[0,2,1]$.)</p>\n"}︡
︠5e2a4679-0181-4ee1-ba20-207551cb272d︠

︠5ab06266-4c17-4b5b-b342-430b4b4d9a10︠

︠a4de2942-76a8-4922-9e74-02f08ed0f8b5︠

︠884eabd5-c1f4-4dd3-b976-7463ae9ea769i︠
%md
### Problem 3: Preparation for quadratic irrationals
Evaluate the infinite continued fraction $[2,\overline{1,2,1}]$.

︡79d969f7-4b87-4958-a24d-02902858d4e8︡{"html":"<h3>Problem 3: Preparation for quadratic irrationals</h3>\n\n<p>Evaluate the infinite continued fraction $[2,\\overline{1,2,1}]$.</p>\n"}︡
︠755ecbbc-b6be-4da1-8bf0-8718725d93a7︠

︠4fd048ac-eefc-407e-86f4-7e290b46dfa5︠

︠4f53cbe6-24a7-46ba-9da0-53024285423c︠

︠edbc6993-a772-44db-b85c-fa7d41cae45ai︠
%md
### Problem 4: Preparation for sums of squares

Find a positive integer that has at least three
different representations as the sum of two squares, disregarding
signs and the order of the summands.

Just to clarify what I'm asking, e.g., the number $65$ can be written as a sum of two squares in *TWO* genuinely different ways, namely $7^2+4^2=8^2+1^2=65$.
︡e39158b4-0663-44d1-b6ac-7ace97a2172c︡{"html":"<h3>Problem 4: Preparation for sums of squares</h3>\n\n<p>Find a positive integer that has at least three\ndifferent representations as the sum of two squares, disregarding\nsigns and the order of the summands.</p>\n\n<p>Just to clarify what I&#8217;m asking, e.g., the number $65$ can be written as a sum of two squares in <em>TWO</em> genuinely different ways, namely $7^2+4^2=8^2+1^2=65$.</p>\n"}︡
︠46c36d24-b58f-4ffe-98eb-165c909e7f37︠
B = int(sqrt(65))
for a in [0..B]:
    for b in [0..a]:
        if a^2 + b^2 == 65:
            print a,b

︡30baa444-4583-4fcb-ab9d-d4700b49e53b︡{"stdout":"7 4\n8 1\n"}︡
︠2c83f29d-00a1-44ea-ac0e-df71e217e21d︠

︠25e473c1-f340-4676-ab9c-a4041a47a358︠

︠4c1df322-8cf5-4580-b680-5a052f4d1c02︠

︠a9c212df-1d64-4630-9132-62e300c39c3d︠

︠c07efc73-e1b8-45a7-9339-636b9dcd9c70i︠
%md

### Problem 5: Improve your project

a. Add at least one figure to your project -- there is an example of how to do that here: <https://cloud.sagemath.com/projects/d6df9d1b-2462-4aa2-91e0-995610ea1726/files/project-help/image-in-tex/>

b. Get *another* paragraph of feedback about your project from somebody else in our class (different than last time) and put it below.
︡f78ea698-37aa-4137-87d9-152f9ba6f267︡{"html":"<h3>Problem 5: Improve your project</h3>\n\n<p>a. Add at least one figure to your project &#8211; there is an example of how to do that here: <a href=\"https://cloud.sagemath.com/projects/d6df9d1b-2462-4aa2-91e0-995610ea1726/files/project-help/image-in-tex/\">https://cloud.sagemath.com/projects/d6df9d1b-2462-4aa2-91e0-995610ea1726/files/project-help/image-in-tex/</a></p>\n\n<p>b. Get <em>another</em> paragraph of feedback about your project from somebody else in our class (different than last time) and put it below.</p>\n"}︡
︠8b718f14-2d68-4dfe-8344-bda6ebf5db0d︠

︠dd458af2-b709-499c-b69d-3e5de4398e4e︠

︠4573c952-8c35-474f-aa97-393976baef6d︠

︠414ea2ca-71e9-4867-8fb7-a181a2fdae49︠










