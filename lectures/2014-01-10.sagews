︠c4a44213-110b-44a3-8d02-3282be5caba7︠

︠38d2f0a0-8d38-43cf-9672-7f91df1fb6a6i︠
%md
## Counting primes

Prime counting function
$$
 \pi(x) = \\#\\{p : p \leq x \text{ is prime }\\}
$$
︡865ba84d-16e6-4d64-92e3-19dd8e8a1514︡{"html":"<h2>Counting primes</h2>\n\n<p>Prime counting function\n$$\n \\pi(x) = \\#\\{p : p \\leq x \\text{ is prime }\\}\n$$</p>\n"}︡
︠c6e80c5d-bfcd-4e6a-8ff3-270f9581390f︠
@interact
def f(t=10, PNT=False, Gauss=False):
    x = var('x')
    g = prime_pi.plot(0,t)
    if PNT:
        g += plot(x/(log(x)-1), (5,t), color='red')
    if Gauss:
        g += plot(Li, (2,t), color='darkgreen')
    show(g, gridlines=True, svg=True, frame=True, figsize=[10,3])
︡4aae5b85-eca7-4b51-8596-d67991ecb759︡{"interact":{"style":"None","flicker":false,"layout":[[["t",12,null]],[["PNT",12,null]],[["Gauss",12,null]],[["",12,null]]],"id":"54aae95d-4b26-410d-91ce-41a2f4807b4c","controls":[{"control_type":"input-box","default":10,"label":"t","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"t","type":null},{"default":false,"var":"PNT","readonly":false,"control_type":"checkbox","label":"PNT"},{"default":false,"var":"Gauss","readonly":false,"control_type":"checkbox","label":"Gauss"}]}}︡
︠5d23bc69-9fa1-4399-82f6-c607e991eae8i︠
%md
## Theorems and Conjectures

**The Prime Number Theorem:** The functions $\pi(x)$ and $x/\log(x)$ are asymptotic to each other, i.e., the limit as $x\to\infty$ of their quotient is $1$.

**Conjecture (The Riemann Hypothesis):** For every $x>2.01$, we have
$$
 |\pi(x) - \text{Li}(x)| \leq \sqrt{x}\log(x).
$$
︡80dc53d9-e5bc-45b7-b65d-a784252832d7︡{"html":"<h2>Theorems and Conjectures</h2>\n\n<p><strong>The Prime Number Theorem:</strong> The functions $\\pi(x)$ and $x/\\log(x)$ are asymptotic to each other, i.e., the limit as $x\\to\\infty$ of their quotient is $1$.</p>\n\n<p><strong>Conjecture (The Riemann Hypothesis):</strong> For every $x>2.01$, we have\n$$\n |\\pi(x) - \\text{Li}(x)| \\leq \\sqrt{x}\\log(x).\n$$</p>\n"}︡
︠1b1049d5-5ea6-4603-8bce-4e331b3c13eci︠
%md
### Example
︡3d419d4c-5f72-4acb-bba5-42016bb01a53︡{"html":"<h3>Example</h3>\n"}︡
︠486c6e2c-c8ab-4f2c-b856-334c0d723d7e︠
1e3 == 1000 # scientific notation
︡dea55aa4-b7c0-4502-bde6-1da3af46f52d︡{"stdout":"True\n"}︡
︠e6155be1-69b2-4690-8812-d2bc9fb9dc6e︠
%time prime_pi(1e10)
︡30ed87b6-e758-4f9e-919d-7ce9c008fc89︡{"stdout":"455052511"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 0.13 s, Wall time: 0.13 s\n"}︡
︠0eb771aa-ab44-4e76-8389-b7a781815b15︠
%time prime_pi(1e11)
︡aa459dc3-f5f1-4ee6-9e8f-80e87e561a79︡{"stdout":"4118054813"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 0.90 s, Wall time: 0.90 s\n"}︡
︠cb7c6b05-d670-4005-9393-58997bd69a7b︠
@interact
def f(x=100000):
    if x >= 1e12:
        print "This will probably take too long so refusing"
        return
    a = prime_pi(x)
    b = N(Li(x))
    c = N(x/(log(x)-1))
    md("""
\\begin{eqnarray}
  \\pi(x) &=& %s   \\\\
  \\text{Li}(x) &=& %s\\\\
  x/(\\log(x)-1) &=& %s\\\\
  \\pi(x) - \\text{Li}(x) &=& %s\\\\
  \\sqrt{x}\\log(x) &=& %s
\\end{eqnarray}
"""%(a, b, c, a-b, N(sqrt(x)*log(x)))  )
︡5743bc25-1421-4699-95a1-889f0ba0077c︡{"interact":{"style":"None","flicker":false,"layout":[[["x",12,null]],[["",12,null]]],"id":"56e2e4d8-5601-4a7b-b34a-07b70e3bdad8","controls":[{"control_type":"input-box","default":100000,"label":"x","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"x","type":null}]}}︡
︠4bfa446a-d4d8-4fb9-817d-df899d8542aai︠

%md
## Many Related Questions

For example, you can ask:

   - are there infinitely many primes $p$ that are congruent to 1 modulo 4 (if you divide $p$ by $4$ the remainder is $1$)?  YES
   - you can "race" the primes that are $3$ mod $4$ versus the primes that are $1$ mod 4
   - you can replace $4$ above by bigger numbers
   - you can replace the primes with prime elements of the Gaussian integers
   - ... and a million other things.
︡e4c44ca4-97f2-42a0-b3ec-7cd2b24db720︡{"interact":{"style":"None","flicker":false,"layout":[[["x",12,null]],[["",12,null]]],"id":"0852409a-b3ea-41e0-8972-645f20930999","controls":[{"control_type":"input-box","default":100000,"label":"x","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"x","type":null}]}}︡{"html":"<h2>Many Related Questions</h2>\n\n<p>For example, you can ask:</p>\n\n<ul>\n<li>are there infinitely many primes $p$ that are congruent to 1 modulo 4 (if you divide $p$ by $4$ the remainder is $1$)?  YES</li>\n<li>you can &#8220;race&#8221; the primes that are $3$ mod $4$ versus the primes that are $1$ mod 4</li>\n<li>you can replace $4$ above by bigger numbers</li>\n<li>you can replace the primes with prime elements of the Gaussian integers</li>\n<li>&#8230; and a million other things.</li>\n</ul>\n"}︡
︠fdcdea58-19f7-4133-ba30-356ecad3337e︠
@interact
def f(bound=selector([10^i for i in [1..6]], buttons=True)):
    if bound > 1e7:
        print "way too big"
        return
    print "Up to %s"%bound
    p1 = len([p for p in prime_range(bound) if p%4 == 1])
    p3 = prime_pi(bound) - p1 - 1
    print "Primes p=1(mod 4): %s"%p1
    print "Primes p=3(mod 4): %s"%p3
︡080b639d-cf74-46fc-886d-6479997f227f︡{"interact":{"style":"None","flicker":false,"layout":[[["bound",12,null]],[["",12,null]]],"id":"b9d29bad-1f80-40ad-b115-d01ed60d3f7b","controls":[{"buttons":true,"control_type":"selector","ncols":null,"button_classes":null,"default":0,"lbls":["10","100","1000","10000","100000","1000000"],"label":"bound","nrows":null,"width":null,"var":"bound"}]}}︡
︠dc537284-4d01-4362-aeba-670a9b0b2c6a︠
v = [0]
for p in primes(3,100000):
    if p % 4 == 3:
        v.append(v[-1]+1)
    else:
        v.append(v[-1]-1)

finance.TimeSeries(v).plot()

︡fdf33694-abf8-416d-96e6-70f8dd1a5a28︡{"once":false,"file":{"show":true,"uuid":"6ba033a1-c206-4fc9-a120-a5953041479c","filename":"/projects/d6df9d1b-2462-4aa2-91e0-995610ea1726/.sage/temp/compute16a/5727/tmp_xUKuTd.png"}}︡
︠f2235b8d-1f00-4b87-a852-60e92fffceeb︠






︠d20b9275-1cf5-486a-84db-e82eeceace2di︠
%md
## Further accessible reading

See this book <http://wstein.org/rh>, which is currently free.
︡72801027-65fa-4b1c-83d3-62dffcc4f79e︡{"html":"<h2>Further accessible reading</h2>\n\n<p>See this book <a href=\"http://wstein.org/rh\">http://wstein.org/rh</a>, which is currently free.</p>\n"}︡
︠c0445a26-52d7-4f23-821d-b69af60e72e1︠












