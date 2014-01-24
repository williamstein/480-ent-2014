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
︡5ce66e40-cb3d-46fc-811f-c07c5896e6ec︡{"html":"<h2>Computing the multiplicative order</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["n",12,null]],[["",12,null]]],"id":"0e8ec7ba-dc57-47a4-b874-74b93666837c","controls":[{"control_type":"input-box","default":3,"label":"a","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":10,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠33448e72-9b32-4d7a-a65e-b09a21932b2e︠
md("## Use Euler's Phi Function $\\varphi(n)$", hide=False)
@interact
def _(n=2014):
    print "euler_phi(%s) = %s"%(n, euler_phi(n))
︡ee610432-1cdc-439c-803a-1595b6fe70a3︡{"html":"<h2>Use Euler&#8217;s Phi Function $\\varphi(n)$</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"7cdd4862-7cee-41dc-84e1-2abe301d161b","controls":[{"control_type":"input-box","default":2014,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠3b3575f5-d972-4b53-b010-9c33692a1ec2︠
md("## Try out Euler's theorem", hide=False)
@interact
def _(n=20):
    k = euler_phi(n)
    print [Mod(x,n)^k for x in range(n) if gcd(x,n) == 1]
︡4ea3c490-fd45-42e9-b0dc-68b617c5ba5f︡{"html":"<h2>Try out Euler&#8217;s theorem</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"799dee99-2606-42ff-9a49-d36bea8e2e50","controls":[{"control_type":"input-box","default":20,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠37058845-c56c-4850-9dae-86ac65ed52f3︠

md("## Try out Wilson's theorem", hide=False)
@interact
def _(n=2013):
    f = 1
    for a in [2..n-1]:
        f *= Mod(a,n)
    md("$$p=%s$$"%n,hide=False)
    md("$$(p-1)! \\equiv %s \\pmod{p}$$"%f,  hide=False)
︡27a73734-d4d5-4374-87e4-d5487b0ee91b︡{"html":"<h2>Try out Wilson&#8217;s theorem</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"12ab9efd-8e70-4f91-ae9a-10a72ea539e2","controls":[{"control_type":"input-box","default":2013,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠de398aba-145e-4d5a-b860-89ad9b64d180︠









