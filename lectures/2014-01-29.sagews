︠ba1de73c-33f7-48ba-ba20-441ee8da4dcci︠
%md
# January 29, 2014: Public-key Cryptography, part 2 (RSA)

 - screencast: <>
 - whiteboard: <>

**Approach:** we will focus on the core number-theoretic ideas behind public-key crypto for now, completely ignoring the nice infrastructure that must be added on top in order to make it pleasant to use and more secure.

︡52b76a93-bd08-46de-9129-4385e536a6c5︡{"html":"<h1>January 29, 2014: Public-key Cryptography, part 2 (RSA)</h1>\n\n<ul>\n<li>screencast: &lt;&gt;</li>\n<li>whiteboard: &lt;&gt;</li>\n</ul>\n\n<p><strong>Approach:</strong> we will focus on the core number-theoretic ideas behind public-key crypto for now, completely ignoring the nice infrastructure that must be added on top in order to make it pleasant to use and more secure.</p>\n"}︡
︠b5da1cb0-19e3-47d7-9b9b-eb9c34eb7f8fi︠
%md

## Whiteboard...

**(explain the theoretical idea behind RSA and how it works)**

︡185efc43-7ddd-492c-bacd-58ffa7354d1e︡{"html":"<h2>Whiteboard&#8230;</h2>\n\n<p><strong>(explain the theoretical idea behind RSA and how it works)</strong></p>\n"}︡
︠6dec4c09-25c3-49e0-83c6-7507a553e3d7︠

︠f438e821-7550-4556-b5a9-fc240c1670b2i︠
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
︠a41fa189-fa29-4197-a4ec-9fd59e8b61ddi︠
%md

## A live demo with somebody in the class...

### Part 1: receive a message

- I will put an $e$ and an $n$ into a chat.

- Then wait for a number back.

- Then we will decrypt the number.
︡6b65f448-90e9-4426-b620-0441a69f8ee1︡{"html":"<h2>A live demo with somebody in the class&#8230;</h2>\n\n<h3>Part 1: receive a message</h3>\n\n<ul>\n<li><p>I will put an $e$ and an $n$ into a chat.</p></li>\n<li><p>Then wait for a number back.</p></li>\n<li><p>Then we will decrypt the number.</p></li>\n</ul>\n"}︡
︠fc4637c8-113e-4828-a71d-98538066dbc5︠

︠bf346b69-5026-4b2b-b3d1-6bf0a681c3ce︠


︠7d68ebfb-d9d6-4048-b7fc-25adf054e0ffi︠
%md

### Part 2: send a message

- Student will make up an $e$ and an $n$ and paste them into a chat.

- Then we will encrypt message to student.

- Student will decrypt it.

︡bceb6ce0-32f6-41cd-b401-ac3b322d9822︡{"html":"<h3>Part 2: send a message</h3>\n\n<ul>\n<li><p>Student will make up an $e$ and an $n$ and paste them into a chat.</p></li>\n<li><p>Then we will encrypt message to student.</p></li>\n<li><p>Student will decrypt it.</p></li>\n</ul>\n"}︡
︠403b991d-bd11-4b8b-92b3-96b7eec08b49︠


︠d504562a-8c66-4d10-a6e6-59fa26428865︠



︠03096d94-11c7-4a38-b531-ddc135dd3ae8i︠
%md

### Part 3: sign a message

- Student will make up a message

- Student will encrypt message with their *decryption* key.

- Send it.   We will verify the signature.









︡b1f7dddd-4172-4914-a827-3974a0155a5c︡{"html":"<h3>Part 3: sign a message</h3>\n\n<ul>\n<li><p>Student will make up a message</p></li>\n<li><p>Student will encrypt message with their <em>decryption</em> key.</p></li>\n<li><p>Send it.   We will verify the signature.</p></li>\n</ul>\n"}︡
︠b8120e93-414a-4b1f-99df-7526eaabe6c5︠

︠146f72ed-3b26-4567-82bb-211c4c56747f︠

︠b44b6e97-1a3e-42d9-9a21-2a9b9e0174df︠

︠c1d153ed-3988-4140-b459-e5b125b0bd0c︠

︠cf1de8c9-cb90-4262-9274-0f174e9459ffi︠
%md

## Crazy project idea -- crypto is a pain to use for communication, so make it easy!?

Create a small javascript library that a person can embed in a webpage, which provides a little textbox for "encrypting a message to you" in it.   So, e.g., I could put it at http://wstein.org, and then even my mom could easily encrypt a message to me.   She would type the message into a box, then click "encrypt" (or maybe even it would encrypt as you type), then take the output and paste it into an email to me.

The configuration for the javascript library would *only* include the public part of the key $(n,e)$ and nothing else, so there are no security risks due to that.  The main problem with this is that the person sending the message has to trust the website that contains the public key.

Note that the message *never* gets sent over the internet before encryption -- it stays in the browser.

There are many existing libraries written in Javascript that basically solve this problem, e.g., <http://www-cs-students.stanford.edu/~tjw/jsbn/>; so you don't have to worry about actually implementing big integer arithmetic, etc.   This would be more a matter of making something look pretty and friendly... and EASY.
︡67ea43bb-5d5d-4c54-b4ec-2394e8cd7bcd︡{"html":"<h2>Crazy project idea &#8211; crypto is a pain to use for communication, so make it easy!?</h2>\n\n<p>Create a small javascript library that a person can embed in a webpage, which provides a little textbox for &#8220;encrypting a message to you&#8221; in it.   So, e.g., I could put it at http://wstein.org, and then even my mom could easily encrypt a message to me.   She would type the message into a box, then click &#8220;encrypt&#8221; (or maybe even it would encrypt as you type), then take the output and paste it into an email to me.</p>\n\n<p>The configuration for the javascript library would <em>only</em> include the public part of the key $(n,e)$ and nothing else, so there are no security risks due to that.  The main problem with this is that the person sending the message has to trust the website that contains the public key.</p>\n\n<p>Note that the message <em>never</em> gets sent over the internet before encryption &#8211; it stays in the browser.</p>\n\n<p>There are many existing libraries written in Javascript that basically solve this problem, e.g., <a href=\"http://www-cs-students.stanford.edu/~tjw/jsbn/\">http://www-cs-students.stanford.edu/~tjw/jsbn/</a>; so you don&#8217;t have to worry about actually implementing big integer arithmetic, etc.   This would be more a matter of making something look pretty and friendly&#8230; and EASY.</p>\n"}︡
︠fb3e53c1-b1a1-44e7-8a59-6fc9627e6fc2︠









