︠41b80f6e-b45a-4efd-bac4-a914a91d343a︠
%md
# Lecture for January 22, 2014

 - screencast: <http://youtu.be/Jk3q8KLdb6Q>
 - whiteboard: <http://youtu.be/vp1wtCgctQQ>
︡91371c57-338b-4357-9f10-1f88e38f5279︡{"html":"<h1>Lecture for January 22, 2014</h1>\n"}︡
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
︡26a85969-63e7-4548-9a5c-58a22dd76686︡{"html":"<h2>Computing the multiplicative order</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["n",12,null]],[["",12,null]]],"id":"b11b90f6-596b-431b-a99c-c819815a1c76","controls":[{"control_type":"input-box","default":3,"label":"a","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":10,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠33448e72-9b32-4d7a-a65e-b09a21932b2e︠
md("## Use Euler's Phi Function $\\varphi(n)$", hide=False)
@interact
def _(n=2014):
    print "euler_phi(%s) = %s"%(n, euler_phi(n))
︡5dbd7c1e-d7fa-43e9-a9e2-22ecf7eaf75b︡{"html":"<h2>Use Euler&#8217;s Phi Function $\\varphi(n)$</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"eb1ea767-e772-4d01-996c-7266d726180d","controls":[{"control_type":"input-box","default":2014,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠3b3575f5-d972-4b53-b010-9c33692a1ec2︠
md("## Try out Euler's theorem", hide=False)
@interact
def _(n=20):
    k = euler_phi(n)
    print [Mod(x,n)^k for x in range(n) if gcd(x,n) == 1]
︡921adb07-3482-4eb8-ac22-5237b8f05fa4︡{"html":"<h2>Try out Euler&#8217;s theorem</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"4755f6f0-5940-405f-97fe-f4a22ab27b61","controls":[{"control_type":"input-box","default":20,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠37058845-c56c-4850-9dae-86ac65ed52f3︠

md("## Try out Wilson's theorem", hide=False)
@interact
def _(n=2013):
    f = 1
    for a in [2..n-1]:
        f *= Mod(a,n)
    md("$$(p-1)! \\equiv %s \\pmod{p}$$"%f,  hide=False)
︡be98fd55-34f2-4b53-a8a0-f9ef76f7966d︡{"html":"<h2>Try out Wilson&#8217;s theorem</h2>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"d7b376d8-cde7-41dd-9fca-ff65e04b3d63","controls":[{"control_type":"input-box","default":2013,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠de398aba-145e-4d5a-b860-89ad9b64d180︠









