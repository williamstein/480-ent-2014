︠e7bbe2e2-2351-4e80-b831-4abaad9fd1fei︠
%md
# Lecture 2 (Jan 8, 2014)

- Syllabus
- Prime numbers

NOTE: Andrew Ohana will teach the class on Jan 15 and Jan 17.

︡5cf61dca-8be0-436d-ace8-111173e051a6︡{"html":"<h1>Lecture 2 (Jan 8, 2014)</h1>\n\n<ul>\n<li>Syllabus</li>\n<li>Prime numbers</li>\n</ul>\n\n<p>NOTE: Andrew Ohana will teach the class on Jan 15 and Jan 17.</p>\n"}︡
︠a3d2f04e-679a-4c1f-8454-4b6221b916a2i︠
%md
## Syllabus

- hand out print copies
- go over in detail
︡8db80d97-a1ba-4ce4-a537-4272b440b3ec︡{"html":"<h2>Syllabus</h2>\n\n<ul>\n<li>hand out print copies</li>\n<li>go over in detail</li>\n</ul>\n"}︡
︠1c404c22-8b68-47b2-80ab-ff0a8aa61fb6i︠
%md
# Prime numbers

2, 3, 5, 7, 11, etc.

An integer $n>1$ is **prime** if it is divisible only by itself.

**Theorem:** *There are infinitely many primes.*

Give proof on the board....

︡43c83659-8a6d-4902-aa64-95612c549494︡{"html":"<h1>Prime numbers</h1>\n\n<p>2, 3, 5, 7, 11, etc.</p>\n\n<p>An integer $n>1$ is <strong>prime</strong> if it is divisible only by itself.</p>\n\n<p><strong>Theorem:</strong> <em>There are infinitely many primes.</em></p>\n\n<p>Give proof on the board&#8230;.</p>\n"}︡
︠0f505ddf-0c80-4d09-be4d-842ed48e8336i︠
%md
## Counting primes

Prime counting function
$$
 \pi(x) = \\#\\{p : p \leq x \text{ is prime }\\}
$$
︡18373ff0-3081-4651-9d39-ccad866edbe6︡{"html":"<h2>Counting primes</h2>\n\n<p>Prime counting function\n$$\n \\pi(x) = \\#\\{p : p \\leq x \\text{ is prime }\\}\n$$</p>\n"}︡
︠c6e80c5d-bfcd-4e6a-8ff3-270f9581390f︠
@interact
def f(t=10, PNT=False, Gauss=False):
    x = var('x')
    g = prime_pi.plot(0,t)
    if PNT:
        g += plot(x/(log(x)-1), (5,t), color='red')
    if Gauss:
        g += plot(Li, (2,t), color='darkgreen')
    show(g, gridlines=True, svg=True, frame=True)
︡8bc75c81-8f71-4691-a2ed-cf84b0c9898f︡{"interact":{"style":"None","flicker":false,"layout":[[["t",12,null]],[["PNT",12,null]],[["Gauss",12,null]],[["",12,null]]],"id":"4aabb65b-9d3c-43fa-8f47-d9fd3bcda3d5","controls":[{"control_type":"input-box","default":10,"label":"t","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"t","type":null},{"default":false,"var":"PNT","readonly":false,"control_type":"checkbox","label":"PNT"},{"default":false,"var":"Gauss","readonly":false,"control_type":"checkbox","label":"Gauss"}]}}︡
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
    b = Li(x)
    md("""
\\begin{eqnarray}
  \\pi(x) &=& %s   \\\\
  \\text{Li}(x) &=& %s\\\\
  \\pi(x) - \\text{Li}(x) &=& %s\\\\
  \\sqrt{x}\\log(x) &=& %s
\\end{eqnarray}
"""%(a, b, a-b, N(sqrt(x)*log(x)))  )
︡04f85ef3-89ef-46ed-bdb5-924dc28c9d7a︡{"interact":{"style":"None","flicker":false,"layout":[[["x",12,null]],[["",12,null]]],"id":"1c1117ab-9c06-45ab-974a-4da38b96a07a","controls":[{"control_type":"input-box","default":100000,"label":"x","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"x","type":null}]}}︡
︠b8d7e258-deea-48ab-8872-2194244c3c7ci︠


%md
# Largest KNOWN Prime

"As of October 2013, the largest known prime number is $2^{57,885,161} − 1$,  a number with 17,425,170 digits." -- see <http://en.wikipedia.org/wiki/Largest_known_prime_number>

This is a Mersenne prime.  It is the 48th Mersenne prime, i.e., of the form $2^p-1$.
︡6764aef1-f3bb-4514-bfea-b7412ad905c4︡{"html":"<h1>Largest KNOWN Prime</h1>\n\n<p>&#8220;As of October 2013, the largest known prime number is $2^{57,885,161} − 1$,  a number with 17,425,170 digits.&#8221; &#8211; see <a href=\"http://en.wikipedia.org/wiki/Largest_known_prime_number\">http://en.wikipedia.org/wiki/Largest_known_prime_number</a></p>\n\n<p>This is a Mersenne prime.  It is the 48th Mersenne prime, i.e., of the form $2^p-1$.</p>\n"}︡
︠e9ff0a6e-1cd2-4274-b21b-116d805ef516︠
%time p = 2^57885161
︡69cb3ec6-a3e0-477a-a231-6ad8012ad227︡{"stdout":"CPU time: 0.01 s, Wall time: 0.00 s\n"}︡
︠374c3e3c-cd9b-402f-80f7-bff93f486599︠
%time s = str(p)
︡8d4e0de6-8278-4f80-8663-f442cba0cd23︡{"stdout":"CPU time: 14.68 s, Wall time: 14.67 s"}︡{"stdout":"\n"}︡
︠646d1634-55e5-4b13-b2a1-fbf6a46398df︠
len(s)
︡7b911083-7444-49d7-a35a-20629501ed32︡{"stdout":"17425170\n"}︡
︠c4db5cb8-c185-40f6-86bb-cc87f89c7329︠
s[:10] + '...' + s[-10:]
︡9eb12b5e-a2a4-420b-9ed2-ce49924df940︡{"stdout":"'5818872662...1724285952'\n"}︡
︠1e9baead-980b-467a-b2ce-48e5f6a64e88i︠
%md

Prizes still...

"150,000 thousand dollars to the first individual or group who discovers a prime number with at least 100,000,000 decimal digits"

<https://www.eff.org/awards/coop>
︡87ef7b6f-2e55-4eae-85f8-95e8596584d2︡{"html":"<p>Prizes still&#8230;</p>\n\n<p>&#8220;150,000 thousand dollars to the first individual or group who discovers a prime number with at least 100,000,000 decimal digits&#8221;</p>\n\n<p><a href=\"https://www.eff.org/awards/coop\">https://www.eff.org/awards/coop</a></p>\n"}︡
︠095f4868-aa60-4dfd-b4e9-a594b040d109︠














