︠21305ab2-f3f9-4b5d-bcd0-6d48521dfd3a︠
%md
# January 27, 2014: Public-key Cryptography, part 1 (Diffie-Hellman).

 - screencast: <http://youtu.be/7Y4m1nHN_aA>
︡fd59554f-2106-4a79-9de3-fe59b4f16ea0︡{"html":"<h1>January 27, 2014: Public-key Cryptography, part 1.</h1>\n\n<ul>\n<li>screencast: <a href=\"http://youtu.be/7Y4m1nHN_aA\">http://youtu.be/7Y4m1nHN_aA</a></li>\n</ul>\n"}︡
︠aec94b5c-9ae4-46b1-8c36-44004645f86d︠
md("## Raising numbers to large powers modulo $n$\n... is fast!")

@interact#(layout=[['a','b','n']])
def f(a=2,b=3,n=5):
    t = cputime()
    r = Mod(a,n)^b
    tm = cputime(t)
    md("$$%s ^ {%s} \\equiv %s \\pmod{%s}$$"%(a,b,r,n))
    print "Time (seconds):", tm
︡e91a3797-0848-4a78-b30a-7c97d1035d8a︡{"html":"<h2>Raising numbers to large powers modulo $n$</h2>\n\n<p>&#8230; is fast!</p>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["b",12,null]],[["n",12,null]],[["",12,null]]],"id":"404bffc4-ca95-413c-b5dd-d55d5e9c9009","controls":[{"control_type":"input-box","default":2,"label":"a","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":3,"label":"b","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":5,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠4e27bd74-73a6-4eb7-9a04-355a4eb43872︠











︠4c3e8916-475b-4d37-ad3c-5e989eb437c3i︠




%md
## Explain Diffie-Hellman on the whiteboard...

First, check out <http://www.ams.org/mathscinet/search/publdoc.html?arg3=&co4=AND&co5=AND&co6=AND&co7=AND&dr=all&pg4=AUCN&pg5=AUCN&pg6=PC&pg7=ALLF&pg8=ET&review_format=html&s4=diffie&s5=hellman&s6=&s7=&s8=All&vfpref=html&yearRangeFirst=&yearRangeSecond=&yrop=eq&r=2&mx-pid=437208>

︡c3ac102e-b969-421d-8e75-f2769cd9d9f7︡{"html":"<h2>Explain Diffie-Hellman on the whiteboard&#8230;</h2>\n\n<p>First, check out <a href=\"http://www.ams.org/mathscinet/search/publdoc.html?arg3=&amp;co4=AND&amp;co5=AND&amp;co6=AND&amp;co7=AND&amp;dr=all&amp;pg4=AUCN&amp;pg5=AUCN&amp;pg6=PC&amp;pg7=ALLF&amp;pg8=ET&amp;review_format=html&amp;s4=diffie&amp;s5=hellman&amp;s6=&amp;s7=&amp;s8=All&amp;vfpref=html&amp;yearRangeFirst=&amp;yearRangeSecond=&amp;yrop=eq&amp;r=2&amp;mx-pid=437208\">http://www.ams.org/mathscinet/search/publdoc.html?arg3=&amp;co4=AND&amp;co5=AND&amp;co6=AND&amp;co7=AND&amp;dr=all&amp;pg4=AUCN&amp;pg5=AUCN&amp;pg6=PC&amp;pg7=ALLF&amp;pg8=ET&amp;review_format=html&amp;s4=diffie&amp;s5=hellman&amp;s6=&amp;s7=&amp;s8=All&amp;vfpref=html&amp;yearRangeFirst=&amp;yearRangeSecond=&amp;yrop=eq&amp;r=2&amp;mx-pid=437208</a></p>\n"}︡
︠ee3f1e0f-2be8-42a7-9007-b18b65504e10︠
salvus.file('diffie-hellman-review.png')




︡23e2b36e-697b-498c-b8d9-aabaef671c22︡{"once":false,"file":{"show":true,"uuid":"fa5ce71a-6152-4bd3-996c-e37e214196f1","filename":"diffie-hellman-review.png"}}︡
︠96abf908-4e3c-42f6-821b-2585c9d29f57︠
md("## Diffie-Hellman key exchange demo", hide=False)

# Step 1. Agree on a shared common prime
set_random_seed(0)
p = next_prime(ZZ.random_element(2^512))
print "p=",p
︡5f7878bd-d6b8-4310-91e8-e9f15ca6e094︡{"html":"<h2>Diffie-Hellman key exchange demo</h2>\n"}︡{"stdout":"p= 5372617329289865003922404599521029743879407240331442034473769227090926652513391938718622969901716609964397540979209966100873862373968442379743697516525277\n"}︡
︠44e758bf-7266-4f76-bd8a-dcf83890a5c5︠
# Step 2. Generate a secret random number
set_random_seed()    # this is harder than it looks :-)
m = ZZ.random_element(p)
#print "m=", m
︡d9228e39-677f-4185-926e-c78087d54d9a︡
︠cd83eec6-0570-4457-a1e1-a52d96686a25︠
str(m)[:5]
︡1d7d661b-f60a-4de7-817e-ff90f214eea5︡{"stdout":"'50141'\n"}︡
︠175edf16-0326-4ee7-a051-27b165541093︠
len(str(m))
︡48a71030-51f9-4a2e-aae9-a85fc518dbbb︡{"stdout":"154\n"}︡
︠70bffcdd-6557-4084-8d2c-957f562514a5︠
# Step 3: Tell everybody 2^m (mod p)
t = Mod(2,p)^m
print "2^m (mod p) =", t
︡3aa4aaab-f9fa-4c19-8848-30f7eeafc890︡{"stdout":"2^m (mod p) = 903393247070070553805167958800868357953388241311620265721076242202035435575129587598404747662489128996081950665805166157825117531516727551286772516860485\n"}︡
︠5fe1ad52-425b-476a-8157-c578de8d7fbb︠
# Step 4: Compute the shared secret

# Paste other person's t here:
t0 = 2575162461423025752057855747619341744095610541078885015867129323713492797697611003235397239765313722103873639396782412746268105527086389359102702371104826

secret = Mod(t0,p)^m  # you can't do this!
print "shared secret=", secret

︡4f373bcb-cb89-4efb-a347-b1f5b6544ccf︡{"stdout":"shared secret= 1490320387249064792409392537074584715600209776245472771238385691562075975829412648763936980986605215275215366860064409471494633605160365693469674399203812\n"}︡
︠4b40cd6c-024a-4c64-95f5-27fb41eeaccai︠
%md
## The Discrete Log Problem

Suppose you want to crack a Diffie-Hellman secret, and you are listening on everything that goes over the wire.  What can you do?

(Note: In practice one either choses $p$ so that the order of $2$ is $p-1$ or replaces $2$ by another number of order $p-1$. So we will assume below that $2$ has order $p-1$.)

**You know:**

 - the prime $p$; the number $2^m \pmod{p}$; the other number $2^n \pmod{p}$

**You do *not* know:**

 - the number $m$ and the number $n$

**You want to know:**

 - the number $2^{mn}\pmod{p}$

**What you can do:**

 - Given $2^m \pmod{p}$ and $p$ you can simply try $m=1,2,3,4,\ldots$ until you find an $m$ that will work.  Then you know $m$ and can compute $2^{mn} \pmod{p}$.

 - But now think about how long this could take, since $p$ is big. ("You just won't believe how vastly, hugely, mind-bogglingly big it is." -- The Hitchhiker's Guide to the Galaxy)

 - There are much better algorithms that, given $2^m\pmod{p}$ and $p$, compute $m=\log_{2}(2^m\pmod{p})$.  The world-record is a prime around $2^{530}$, which took years of CPU time. See <http://en.wikipedia.org/wiki/Discrete_logarithm_records>

So, when people use Diffie-Hellman (which they do, a lot! -- see <http://www.ietf.org/rfc/rfc4419.txt>) they use a bigger $p$.  "The recommended values for min and max [bits] are 1024 and 8192, respectively."
︡34bc35a5-80c5-43b2-8b23-c74b43c99536︡{"html":"<h2>The Discrete Log Problem</h2>\n\n<p>Suppose you want to crack a Diffie-Hellman secret, and you are listening on everything that goes over the wire.  What can you do?</p>\n\n<p>(Note: In practice one either choses $p$ so that the order of $2$ is $p-1$ or replaces $2$ by another number of order $p-1$. So we will assume below that $2$ has order $p-1$.)</p>\n\n<p><strong>You know:</strong></p>\n\n<ul>\n<li>the prime $p$; the number $2^m \\pmod{p}$; the other number $2^n \\pmod{p}$</li>\n</ul>\n\n<p><strong>You do <em>not</em> know:</strong></p>\n\n<ul>\n<li>the number $m$ and the number $n$</li>\n</ul>\n\n<p><strong>You want to know:</strong></p>\n\n<ul>\n<li>the number $2^{mn}\\pmod{p}$</li>\n</ul>\n\n<p><strong>What you can do:</strong></p>\n\n<ul>\n<li><p>Given $2^m \\pmod{p}$ and $p$ you can simply try $m=1,2,3,4,\\ldots$ until you find an $m$ that will work.  Then you know $m$ and can compute $2^{mn} \\pmod{p}$.</p></li>\n<li><p>But now think about how long this could take, since $p$ is big. (\"You just won&#8217;t believe how vastly, hugely, mind-bogglingly big it is.&#8221; &#8211; The Hitchhiker&#8217;s Guide to the Galaxy)</p></li>\n<li><p>There are much better algorithms that, given $2^m\\pmod{p}$ and $p$, compute $m=\\log_{2}(2^m\\pmod{p})$.  The world-record is a prime around $2^{530}$, which took years of CPU time. See <a href=\"http://en.wikipedia.org/wiki/Discrete_logarithm_records\">http://en.wikipedia.org/wiki/Discrete_logarithm_records</a></p></li>\n</ul>\n\n<p>So, when people use Diffie-Hellman (which they do, a lot! &#8211; see <a href=\"http://www.ietf.org/rfc/rfc4419.txt\">http://www.ietf.org/rfc/rfc4419.txt</a>) they use a bigger $p$.  &#8220;The recommended values for min and max [bits] are 1024 and 8192, respectively.&#8221;</p>\n"}︡
︠329cedff-ebae-49c0-b492-9e1990668841i︠
%md
## The Man in the Middle Attack

If you can listen in on our communications, and you can also alter them, then you can do something dangerous: the man in the middle attack!

**The basic idea:** instead of the two people agreeing on a single shared secret with each other, they instead each agree on a different shared secret with *you*.

 - You then know both shared secrets.

 - You decrypt messages from one person, then re-encrypt them to the other, meanwhile listening in on everything.

Exactly this is deployed in practice on the internet by a major government agency: <http://www.techdirt.com/articles/20131004/10522324753/>

Maybe look at `~/.ssh/known_hosts` in a cloud project.
︡330622df-53fb-4faf-bb20-ba0a34987457︡{"html":"<h2>The Man in the Middle Attack</h2>\n\n<p>If you can listen in on our communications, and you can also alter them, then you can do something dangerous: the man in the middle attack!</p>\n\n<p><strong>The basic idea:</strong> instead of the two people agreeing on a single shared secret with each other, they instead each agree on a different shared secret with <em>you</em>.</p>\n\n<ul>\n<li><p>You then know both shared secrets.</p></li>\n<li><p>You decrypt messages from one person, then re-encrypt them to the other, meanwhile listening in on everything.</p></li>\n</ul>\n\n<p>Exactly this is deployed in practice on the internet by a major government agency: <a href=\"http://www.techdirt.com/articles/20131004/10522324753/\">http://www.techdirt.com/articles/20131004/10522324753/</a></p>\n\n<p>Maybe look at <code>~/.ssh/known_hosts</code> in a cloud project.</p>\n"}︡
︠d67b032f-d22d-4fb4-81c8-4de28d4c47b4i︠
%md

## Next time...

We'll talk about RSA, which interestingly solves certain problems directly which Diffie-Hellman doesn't directly, e.g.,:

   - digitally signing documents (a problem that comes up with email and bitcoin)
   - sending encrypted messages (e.g., email)

Also, RSA mainly relies on the difficulty of integer factorization rather than hardness of the discrete log problem.

The best current public-key cryptosystems use elliptic curves, which we haven't got to yet.  We'll spend some time learning the background for them, then get back to public-key crypto again.
︡c09034ee-ee16-4230-8401-da51c38c3f0f︡{"html":"<h2>Next time&#8230;</h2>\n\n<p>We&#8217;ll talk about RSA, which interestingly solves certain problems directly which Diffie-Hellman doesn&#8217;t directly, e.g.,:</p>\n\n<ul>\n<li>digitally signing documents (a problem that comes up with email and bitcoin)</li>\n<li>sending encrypted messages (e.g., email)</li>\n</ul>\n\n<p>Also, RSA mainly relies on the difficulty of integer factorization rather than hardness of the discrete log problem.</p>\n\n<p>The best current public-key cryptosystems use elliptic curves, which we haven&#8217;t got to yet.  We&#8217;ll spend some time learning the background for them, then get back to public-key crypto again.</p>\n"}︡
︠5225581f-10ce-497f-b57f-9434e005d0d5︠












