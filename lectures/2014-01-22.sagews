︠41b80f6e-b45a-4efd-bac4-a914a91d343ai︠
%md
# Lecture for January 22, 2014

 - screencast: <http://youtu.be/Jk3q8KLdb6Q>
 - whiteboard: <http://youtu.be/vp1wtCgctQQ>
︡e249b370-90a5-4874-b1a8-f397b2431447︡{"html":"<h1>Lecture for January 22, 2014</h1>\n\n<ul>\n<li>screencast: <a href=\"http://youtu.be/Jk3q8KLdb6Q\">http://youtu.be/Jk3q8KLdb6Q</a></li>\n<li>whiteboard: <a href=\"http://youtu.be/vp1wtCgctQQ\">http://youtu.be/vp1wtCgctQQ</a></li>\n</ul>\n"}︡
︠fa77d08a-0f3a-4cc7-b371-e44fc1377d67︠
md("## Computing the multiplicative order", hide=False)
@interact
def f(a=3, n=10):
    if gcd(a,n) != 1:
        print "We must have gcd(a,n) equal to 1."
        return
    R = Integers(n)
    abar = R(a)
    o = abar.multiplicative_order()
    print "The multiplicative order of a=%s modulo %s is %s"%(a,n,o)

    print "\nThe powers of a:\n    ",
    b = abar
    for k in range(n):
        print b,
        b *= abar
    print
︡b0e7dc8e-7a5b-4a66-b4c2-98f0110a2dfc︡{"html":"<h2>Computing the multiplicative order</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["n",12,null]],[["",12,null]]],"id":"d624b3c6-a12e-4a51-b1cb-6f03590a0823","controls":[{"control_type":"input-box","default":3,"label":"a","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":10,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠33448e72-9b32-4d7a-a65e-b09a21932b2e︠
md("## Use Euler's Phi Function $\\varphi(n)$", hide=False)
@interact
def _(n=2014):
    print "euler_phi(%s) = %s"%(n, euler_phi(n))
︡a4d2eda4-35f9-42ee-b263-75bf3f3092c7︡{"html":"<h2>Use Euler&#8217;s Phi Function $\\varphi(n)$</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"9891f897-36a0-41a0-964a-ba4070be2ada","controls":[{"control_type":"input-box","default":2014,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠3b3575f5-d972-4b53-b010-9c33692a1ec2︠
md("## Try out Euler's theorem", hide=False)
@interact
def _(n=20):
    k = euler_phi(n)
    print [Mod(x,n)^k for x in range(n) if gcd(x,n) == 1]
︡4cd14f12-4264-44fc-8efd-414f8de425aa︡{"html":"<h2>Try out Euler&#8217;s theorem</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"eb7a6177-3f59-4a64-845e-780be15e045c","controls":[{"control_type":"input-box","default":20,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠37058845-c56c-4850-9dae-86ac65ed52f3i︠

md("## Try out Wilson's theorem", hide=False)
@interact
def _(n=2013):
    f = 1
    for a in [2..n-1]:
        f *= Mod(a,n)
    md("$$p=%s$$"%n,hide=False)
    md("$$(p-1)! \\equiv %s \\pmod{p}$$"%f,  hide=False)
︡d7925eb9-fb71-42a2-abc2-ec2aaee39116︡{"html":"<h2>Try out Wilson&#8217;s theorem</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"2a645608-0112-438d-b238-f51a5d5fc5c2","controls":[{"control_type":"input-box","default":2013,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠de398aba-145e-4d5a-b860-89ad9b64d180︠









