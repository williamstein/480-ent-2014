︠ba1de73c-33f7-48ba-ba20-441ee8da4dcci︠
%md
# January 29, 2014: Public-key Cryptography, part 2 (RSA)

 - screencast:
︡7abaa1be-fda1-4e1a-be5e-ca06282afdfb︡{"html":"<h1>January 29, 2014: Public-key Cryptography, part 2.</h1>\n\n<ul>\n<li>screencast:</li>\n</ul>\n"}︡
︠f438e821-7550-4556-b5a9-fc240c1670b2︠
rsa={}

@interact
def f(bits=128, go=button('Make another RSA cryptosystem', classes="btn-large btn-default fa fa-refresh")):
    b = bits//2
    print "Creating %s-bit RSA cryptosystem"%(2*b)
    p = ZZ(next_probable_prime(randrange(2^b,2^(b+1)-1)))
    q = ZZ(next_probable_prime(randrange(2^b,2^(b+1)-1)))
    n = p*q
    while True:
        try:
            e = ZZ(randrange(0,n-1))
            d = Mod(e,(p-1)*(q-1))^(-1)
            break
        except:
            pass
    print "\nPublic key:\n(e,n) =",(e,n)
    print "\nFull key:          = stored in a the global variable 'rsa'"
    global rsa
    rsa = {'e':e,'n':n,'d':d}
︡7c3b194d-aee4-4be0-8548-63f2f40d5f77︡{"interact":{"style":"None","flicker":false,"layout":[[["bits",12,null]],[["go",12,null]],[["",12,null]]],"id":"88c9b28e-0cbf-4adf-ac19-bacfaa4eeb6b","controls":[{"control_type":"input-box","default":128,"label":"bits","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"bits","type":null},{"control_type":"button","default":"Make another RSA cryptosystem","label":"go","width":null,"classes":"btn-large btn-default fa fa-refresh","var":"go","icon":null}]}}︡
︠589ce708-923e-462a-ba57-ced36bce13d0︠
my_rsa = dict(rsa)  # make a copy
︡97a9703b-af0b-49b6-861b-9fa2fede9e4a︡
︠814f2ada-e473-400e-80bc-7af073bcd6fe︠
my_rsa['e']
︡17f0875f-c24f-476e-a91a-094bb2ff4d12︡{"stdout":"293494010134947139721606761807567017373\n"}︡
︠3562f173-8cca-40c5-972d-e67aeccbe5fa︠
my_rsa['n']
︡9dc6ddd9-72a1-4c3d-9021-98e0d3ef1bbf︡{"stdout":"651790867435205665208048899946415370153\n"}︡
︠a41fa189-fa29-4197-a4ec-9fd59e8b61dd︠




︠cf1de8c9-cb90-4262-9274-0f174e9459ffi︠
%md

## Crazy project idea -- crypto is a pain to use for communication, so make it easy!?

Create a small javascript library that a person can embed in a webpage, which provides a little textbox for "encrypting a message to you" in it.   So, e.g., I could put it at http://wstein.org, and then even my mom could easily encrypt a message to me.   She would type the message into a box, then click "encrypt" (or maybe even it would encrypt as you type), then take the output and paste it into an email to me.

The configuration for the javascript library would *only* include the public part of the key $(n,e)$ and nothing else, so there are no security risks due to that.  The main problem with this is that the person sending the message has to trust the website that contains the public key.

Note that the message *never* gets sent over the internet before encryption -- it stays in the browser.

There are many existing libraries written in Javascript that basically solve this problem, e.g., <http://www-cs-students.stanford.edu/~tjw/jsbn/>; so you don't have to worry about actually implementing big integer arithmetic, etc.   This would be more a matter of making something look pretty and friendly... and EASY.
︡67ea43bb-5d5d-4c54-b4ec-2394e8cd7bcd︡{"html":"<h2>Crazy project idea &#8211; crypto is a pain to use for communication, so make it easy!?</h2>\n\n<p>Create a small javascript library that a person can embed in a webpage, which provides a little textbox for &#8220;encrypting a message to you&#8221; in it.   So, e.g., I could put it at http://wstein.org, and then even my mom could easily encrypt a message to me.   She would type the message into a box, then click &#8220;encrypt&#8221; (or maybe even it would encrypt as you type), then take the output and paste it into an email to me.</p>\n\n<p>The configuration for the javascript library would <em>only</em> include the public part of the key $(n,e)$ and nothing else, so there are no security risks due to that.  The main problem with this is that the person sending the message has to trust the website that contains the public key.</p>\n\n<p>Note that the message <em>never</em> gets sent over the internet before encryption &#8211; it stays in the browser.</p>\n\n<p>There are many existing libraries written in Javascript that basically solve this problem, e.g., <a href=\"http://www-cs-students.stanford.edu/~tjw/jsbn/\">http://www-cs-students.stanford.edu/~tjw/jsbn/</a>; so you don&#8217;t have to worry about actually implementing big integer arithmetic, etc.   This would be more a matter of making something look pretty and friendly&#8230; and EASY.</p>\n"}︡
︠fb3e53c1-b1a1-44e7-8a59-6fc9627e6fc2︠









