︠d90dbba4-3314-4755-90ae-6d5f829e0351i︠
%md
# Lecture on Continued Fractions (Feb 21, 2014)

- screencast: <http://youtu.be/rBkehLBoM68>
- whiteboard recording: <http://youtu.be/KX2hG5Rdoc8>

- Note: there is an old English proof of the cont frac of $e$ here (thanks to Victor Miller for telling me):

    The Simple Continued Fraction Expansion of e
    Author(s): C. D. Olds
    Source: The American Mathematical Monthly, Vol. 77, No. 9 (Nov., 1970), pp. 968-974

- on whiteboard: review of last time; proof that rational and real number has a continued fraction representation.





︡c44d8ad9-a5e8-4bfd-a3d3-a265b0e21ffb︡{"html":"<h1>Lecture on Continued Fractions (Feb 21, 2014)</h1>\n\n<ul>\n<li>screencast: <a href=\"http://youtu.be/rBkehLBoM68\">http://youtu.be/rBkehLBoM68</a></li>\n<li><p>whiteboard recording: <a href=\"http://youtu.be/KX2hG5Rdoc8\">http://youtu.be/KX2hG5Rdoc8</a></p></li>\n<li><p>Note: there is an old English proof of the cont frac of $e$ here (thanks to Victor Miller for telling me):</p>\n\n<p>The Simple Continued Fraction Expansion of e\nAuthor(s): C. D. Olds\nSource: The American Mathematical Monthly, Vol. 77, No. 9 (Nov., 1970), pp. 968-974</p></li>\n<li><p>on whiteboard: review of last time; proof that rational and real number has a continued fraction representation.</p></li>\n</ul>\n"}︡
︠9871ae6e-2cd1-4260-acc2-2cbadece6375︠
c = continued_fraction([3,4,8,9,1,4]); c
︡e5f26e00-87c8-4998-a234-adc3e53fea06︡{"stdout":"[3, 4, 8, 9, 1, 4]\n"}︡
︠932e51ff-2d7a-4bcc-a8a1-02ca754c2ee5︠
show(c)
︡80548bd6-928b-487c-8285-7e817207f9c5︡{"tex":{"tex":"3+ \\frac{\\displaystyle 1}{\\displaystyle 4+ \\frac{\\displaystyle 1}{\\displaystyle 8+ \\frac{\\displaystyle 1}{\\displaystyle 9+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 4}}}}}","display":true}}︡
︠9bf4541c-304f-47dd-a45a-f269690ddf4e︠
c = continued_fraction(2014/786543)
type(c)
︡d5b13240-e980-4572-8748-1db2b4e734a6︡{"stdout":"<class 'sage.rings.contfrac.ContinuedFraction'>\n"}︡
︠793b5d80-6230-4eef-8e8c-559e8f86ad4f︠
c
︡ad8786c1-1a6d-4c1f-b420-1f3f06d177e6︡{"stdout":"[0, 390, 1, 1, 6, 8]\n"}︡
︠e925a26b-24a1-40dd-88bb-b85de938ff78︠
show(c)
︡eabe221c-bb4b-4af2-bdc8-4c9b0ab7334a︡{"tex":{"tex":"0+ \\frac{\\displaystyle 1}{\\displaystyle 390+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 6+ \\frac{\\displaystyle 1}{\\displaystyle 8}}}}}","display":true}}︡
︠8bb7d820-a49b-4775-ab88-6909d277e313︠
# Sage has a continued fraction command:

v = continued_fraction(939/391917); v
︡b1f1e18c-4306-44c4-9475-c097175f4cbb︡{"stdout":"[0, 417, 2, 1, 1, 1, 7, 5]\n"}︡
︠0ee85385-ea21-4799-b8cd-e8e81e9c7684︠
c = continued_fraction(pi); c
︡85d85659-1fe3-4dcc-95df-7e15cc603511︡{"stdout":"[3, 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14]\n"}︡
︠dbd7ea89-c0b5-44c4-9a0e-e8d7227a9fc9︠
show(c)
︡19a71e84-4b47-4daa-b33e-8c05b7e13d5c︡{"tex":{"tex":"3+ \\frac{\\displaystyle 1}{\\displaystyle 7+ \\frac{\\displaystyle 1}{\\displaystyle 15+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 292+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 2+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 3+ \\frac{\\displaystyle 1}{\\displaystyle 1+ \\frac{\\displaystyle 1}{\\displaystyle 14}}}}}}}}}}}}","display":true}}︡
︠86e3f635-74d1-4271-a881-ba4f69f19415︠
for con in c.convergents():
    print con, N(con,100)
︡0b35e079-b761-4374-b9b5-3256906c3073︡{"stdout":"3 3.0000000000000000000000000000\n22/7 3.1428571428571428571428571429\n333/106 3.1415094339622641509433962264\n355/113 3.1415929203539823008849557522\n103993/33102 3.1415926530119026040722614948\n104348/33215 3.1415926539214210447087159416\n208341/66317 3.1415926534674367055204547854\n312689/99532 3.1415926536189366233975003014\n833719/265381 3.1415926535810777712044193066\n1146408/364913 3.1415926535914039784825424142\n4272943/1360120 3.1415926535893891715436873217\n5419351/1725033 3.1415926535898153832419437773\n80143857/25510582 3.1415926535897926593756269457\n"}︡
︠8cccb09c-19da-4517-a5fb-922f8a7b9ba6︠
continued_fraction(pi, bits=200)
︡98757e67-1a79-4d0c-9d9a-1c69632eb3c1︡{"stdout":"[3, 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14, 2, 1, 1, 2, 2, 2, 2, 1, 84, 2, 1, 1, 15, 3, 13, 1, 4, 2, 6, 6, 99, 1, 2, 2, 6, 3, 5, 1, 1, 6, 8, 1, 7, 1, 2, 3, 7, 1, 2, 1, 1]\n"}︡
︠503e21c2-60a8-42cb-8fbc-8c1413900d1c︠
c = continued_fraction([1,2,3]); c
︡4fb937ed-667f-47c0-a88b-be71d31c6ac1︡{"stdout":"[1, 2, 3]\n"}︡
︠3643cff9-4dc9-4bb4-b21f-9982137117fc︠
c.convergents()
︡39dc17bd-e697-4868-86b6-43f3dcec369b︡{"stdout":"[1, 3/2, 10/7]\n"}︡
︠297b3bf5-1abf-4dc1-92c3-5368704a60e2︠
@interact
def f(x=pi, bits=(20,(5..100))):
    try:
        v = continued_fraction(x,bits=bits)
        show(v)
        show(v.convergents())
    except:
        print "enter something valid..."
︡5138b97b-14af-4b82-83fe-23393a9cef19︡{"interact":{"style":"None","flicker":false,"layout":[[["x",12,null]],[["bits",12,null]],[["",12,null]]],"id":"c5a289a3-47cc-487b-abd3-80effbe72221","controls":[{"control_type":"input-box","default":"pi","label":"x","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"x","type":null},{"control_type":"slider","default":15,"var":"bits","width":null,"vals":["5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"],"animate":true,"label":"bits","display_value":true}]}}︡
︠ef57af07-91f5-4e7e-964c-ac5ad665d4f6︠
continued_fraction(e^2,bits=300)
︡2aadc248-18c1-4bbb-82e2-ca73b5ef9f40︡{"stdout":"[7, 2, 1, 1, 3, 18, 5, 1, 1, 6, 30, 8, 1, 1, 9, 42, 11, 1, 1, 12, 54, 14, 1, 1, 15, 66, 17, 1, 1, 18, 78, 20, 1, 1, 21, 90, 23, 1, 1, 24, 102, 26, 1, 1, 27, 114, 29, 1, 1, 30, 126]\n"}︡
︠9dd1a159-e00e-4cb2-af0a-eb71c6ad76dc︠

︠45b92869-318e-4cde-b697-a686604be7a1i︠
︡9a2ec190-652a-4d1f-a4b6-4198dd9957c4︡{"html":"<h2>Fibonacci Numbers</h2>\n\n<p>$$ f_0 = 1, f_1 = 1, f_2 = 1+1, &#8230;, f_n = f_{n-1} + f_{n-2}$$</p>\n"}︡
︠2c47a701-cedd-4cd6-b9f5-26540d200741︠
f = [1,1]
for i in range(2,20):
    f.append(f[i-1]+f[i-2])
print f
︡27fb98da-8c93-4815-b645-98ad4d282d7a︡{"stdout":"[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765]\n"}︡
︠704b1525-53a6-4f88-9b5e-c44a287be61b︠
continued_fraction((1+sqrt(5))/2)
︡a83fd75a-f293-4c48-8897-44c88ec27bda︡{"stdout":"[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]\n"}︡
︠da3fcddb-e55b-4195-8a72-b3ec7176a5e6︠
convergents(continued_fraction((1+sqrt(5))/2))
︡8df8f907-4872-42c6-9c35-78b5acbf1560︡{"stdout":"[1, 2, 3/2, 5/3, 8/5, 13/8, 21/13, 34/21, 55/34, 89/55, 144/89, 233/144, 377/233, 610/377, 987/610, 1597/987, 2584/1597, 4181/2584, 6765/4181, 10946/6765, 17711/10946, 28657/17711, 46368/28657, 75025/46368, 121393/75025, 196418/121393, 317811/196418, 514229/317811, 832040/514229, 1346269/832040, 2178309/1346269, 3524578/2178309, 5702887/3524578, 9227465/5702887, 14930352/9227465, 24157817/14930352]\n"}︡
︠3312066c-2236-41a5-8f49-2bf834db4880i︠

%md
## What we'll do next...
︡6c115d68-f5f4-4603-9829-836fb83941be︡{"html":"<h2>What we&#8217;ll do next&#8230;</h2>\n"}︡
︠978c3996-6521-42eb-a582-48cbf6aa8e7ci︠
%md
**Theorem** A infinite (simple) continued fraction is eventually repeating if and only if it is a quadratic irrational.
︡98a1a3b0-5964-4c8e-893d-11f7c54e7373︡{"html":"<p><strong>Theorem</strong> A infinite (simple) continued fraction is eventually repeating if and only if it is a quadratic irrational.</p>\n"}︡
︠94e50e0d-8943-4752-a3e3-fb24bb2233a1︠
continued_fraction(sqrt(7))
︡05a248fd-6c5f-4842-8b3e-5c700ddd4eb1︡{"stdout":"[2, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1]\n"}︡
︠626344bd-27c4-4eb3-8b9b-e70e8be76ff7︠
continued_fraction((sqrt(2014)+1)/3)
︡a414370c-271c-41cf-9e1f-98b2a1db2ae0︡{"stdout":"[15, 3, 2, 2, 1, 1, 3, 2, 44, 2, 3, 1, 1, 2, 2]\n"}︡
︠f341187f-aeed-42f4-9124-7cd1e600e840︠
continued_fraction((sqrt(2014)+1)/3,bits=300)
︡1c5fbdcb-53c2-4a02-9202-68fc3614531c︡{"stdout":"[15, 3, 2, 2, 1, 1, 3, 2, 44, 2, 3, 1, 1, 2, 2, 3, 29, 1, 1, 1, 2, 17, 1, 1, 2, 1, 4, 3, 1, 2, 4, 2, 1, 3, 4, 1, 2, 1, 1, 17, 2, 1, 1, 1, 29, 3, 2, 2, 1, 1, 3, 2, 44, 2, 3, 1, 1, 2, 2, 3, 29, 1, 1, 1, 2, 17, 1, 1, 2, 1, 4, 3, 1, 2, 4, 2, 1, 3, 4, 1, 2, 1, 1, 17, 2, 1, 1, 1, 29, 3, 2, 2, 1, 1, 3, 2, 44]\n"}︡
︠a9fcefb0-786b-4e13-b9b1-9757cedeb29bi︠
%md

An *algebraic number* of degree $d$ is any root of an irreducible polynomial of degree $d$ with integer coefficients.

**Open Problem** Richard Guy (see [Guy94, pg. 260])

 - Is there a (real) algebraic number of degree greater than two whose simple continued fraction has unbounded $a_n$?

 - Does every such number have unbounded $a_n$?
︡0811590c-5ebe-4f63-91ad-ea2ccf0b6e40︡{"html":"<p>An <em>algebraic number</em> of degree $d$ is any root of an irreducible polynomial of degree $d$ with integer coefficients.</p>\n\n<p><strong>Open Problem</strong> Richard Guy (see [Guy94, pg. 260])</p>\n\n<ul>\n<li><p>Is there a (real) algebraic number of degree greater than two whose simple continued fraction has unbounded $a_n$?</p></li>\n<li><p>Does every such number have unbounded $a_n$?</p></li>\n</ul>\n"}︡
︠b49acb8e-b281-4db5-a423-299d20191fa5︠
continued_fraction(2^(1/3),bits=500)
︡595230de-2dd5-4cc0-96d9-b72780ed9116︡{"stdout":"[1, 3, 1, 5, 1, 1, 4, 1, 1, 8, 1, 14, 1, 10, 2, 1, 4, 12, 2, 3, 2, 1, 3, 4, 1, 1, 2, 14, 3, 12, 1, 15, 3, 1, 4, 534, 1, 1, 5, 1, 1, 121, 1, 2, 2, 4, 10, 3, 2, 2, 41, 1, 1, 1, 3, 7, 2, 2, 9, 4, 1, 3, 7, 6, 1, 1, 2, 2, 9, 3, 1, 1, 69, 4, 4, 5, 12, 1, 1, 5, 15, 1, 4, 1, 1, 1, 1, 1, 89, 1, 22, 186, 6, 2, 3, 1, 3, 2, 1, 1, 5, 1, 3, 1, 8, 9, 1, 26, 1, 7, 1, 18, 6, 1, 372, 3, 13, 1, 1, 14, 2, 2, 2, 1, 1, 4, 3, 2, 2, 1, 1, 9, 1]\n"}︡
︠ee6c80b6-78b8-4cbd-9038-f942825b26f8︠
R.<x> = PolynomialRing(RealField(200))
v = (x^7 + 13*x^3 + 5).roots(); v
︡43c22854-833e-4546-8d37-6a2ee65af81c︡{"stdout":"[(-0.72223233566084097778185658243928964671385522861651662214416, 1)]\n"}︡
︠ffc34cdd-7f7f-406a-b768-5fe896a596e2︠
continued_fraction(v[0][0])
︡93e13eb7-d9d0-4104-9dc7-55677c74ed6a︡{"stdout":"[-1, 3, 1, 1, 1, 1, 304, 1, 1, 3, 7, 1, 12, 1, 4, 2, 1, 4, 7, 1, 1, 2, 72, 1, 1, 24, 1, 1, 1, 2, 81, 7, 212, 1, 5, 2, 1, 9, 1, 5, 2, 1, 1, 1, 5, 1, 1, 1, 5, 20, 3, 1, 7, 3, 2]\n"}︡
︠9baf971c-0a34-4f33-bf9e-66afa3d4d65b︠









