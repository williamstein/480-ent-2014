︠d90dbba4-3314-4755-90ae-6d5f829e0351i︠
%md
# Lecture on Continued Fractions (Feb 21, 2014)


- Note: there is an old English proof of the cont frac of $e$ here (thanks to Victor Miller for telling me):

    The Simple Continued Fraction Expansion of e
    Author(s): C. D. Olds
    Source: The American Mathematical Monthly, Vol. 77, No. 9 (Nov., 1970), pp. 968-974

- on whiteboard: review of last time; proof that rational and real number has a continued fraction representation.

︡81f3f20c-3a40-4e0c-b84b-218c3f5da6b5︡{"html":"<h1>Lecture on Continued Fractions (Feb 21, 2014)</h1>\n\n<ul>\n<li><p>Note: there is an old English proof of the cont frac of $e$ here (thanks to Victor Miller for telling me):</p>\n\n<p>The Simple Continued Fraction Expansion of e\nAuthor(s): C. D. Olds\nSource: The American Mathematical Monthly, Vol. 77, No. 9 (Nov., 1970), pp. 968-974</p></li>\n<li><p>on whiteboard: review of last time; proof that rational and real number has a continued fraction representation.</p></li>\n</ul>\n"}︡
︠8bb7d820-a49b-4775-ab88-6909d277e313︠
# Sage has a continued fraction command:

v = continued_fraction(939/391917); v
︡b1f1e18c-4306-44c4-9475-c097175f4cbb︡{"stdout":"[0, 417, 2, 1, 1, 1, 7, 5]\n"}︡
︠0ee85385-ea21-4799-b8cd-e8e81e9c7684︠
continued_fraction(pi)
︡6cca3b91-e03c-4ee4-a037-d36b898a4cf3︡{"stdout":"[3, 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14]\n"}︡
︠8cccb09c-19da-4517-a5fb-922f8a7b9ba6︠
continued_fraction(pi, bits=200)
︡98757e67-1a79-4d0c-9d9a-1c69632eb3c1︡{"stdout":"[3, 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14, 2, 1, 1, 2, 2, 2, 2, 1, 84, 2, 1, 1, 15, 3, 13, 1, 4, 2, 6, 6, 99, 1, 2, 2, 6, 3, 5, 1, 1, 6, 8, 1, 7, 1, 2, 3, 7, 1, 2, 1, 1]\n"}︡
︠297b3bf5-1abf-4dc1-92c3-5368704a60e2︠
@interact
def f(x=pi, bits=(20,(5..100))):
    try:
        v = continued_fraction(x,bits=bits)
        show(v)
        show(v.convergents())
    except:
        print "enter something valid..."
︡ff51c023-cc45-4e74-9219-72f055f17b34︡{"interact":{"style":"None","flicker":false,"layout":[[["x",12,null]],[["bits",12,null]],[["",12,null]]],"id":"0f11a93c-c4a9-45cd-8706-6317e9ccd9cb","controls":[{"control_type":"input-box","default":"pi","label":"x","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"x","type":null},{"control_type":"slider","default":15,"var":"bits","width":null,"vals":["5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"],"animate":true,"label":"bits","display_value":true}]}}︡
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
continued_fraction(2^(1/3),bits=300)
︡099404ea-c915-4e2d-9e86-6bf2813b5f59︡{"stdout":"[1, 3, 1, 5, 1, 1, 4, 1, 1, 8, 1, 14, 1, 10, 2, 1, 4, 12, 2, 3, 2, 1, 3, 4, 1, 1, 2, 14, 3, 12, 1, 15, 3, 1, 4, 534, 1, 1, 5, 1, 1, 121, 1, 2, 2, 4, 10, 3, 2, 2, 41, 1, 1, 1, 3, 7, 2, 2, 9, 4, 1, 3, 7, 6, 1, 1, 2, 2, 9, 3, 1, 1, 69, 4, 4, 5, 12, 1, 1, 5]\n"}︡
︠ee6c80b6-78b8-4cbd-9038-f942825b26f8︠
R.<x> = PolynomialRing(RealField(200))
v = (x^7 + 13*x^3 + 5).roots(); v
︡43c22854-833e-4546-8d37-6a2ee65af81c︡{"stdout":"[(-0.72223233566084097778185658243928964671385522861651662214416, 1)]\n"}︡
︠ffc34cdd-7f7f-406a-b768-5fe896a596e2︠
continued_fraction(v[0][0])
︡93e13eb7-d9d0-4104-9dc7-55677c74ed6a︡{"stdout":"[-1, 3, 1, 1, 1, 1, 304, 1, 1, 3, 7, 1, 12, 1, 4, 2, 1, 4, 7, 1, 1, 2, 72, 1, 1, 24, 1, 1, 1, 2, 81, 7, 212, 1, 5, 2, 1, 9, 1, 5, 2, 1, 1, 1, 5, 1, 1, 1, 5, 20, 3, 1, 7, 3, 2]\n"}︡
︠9baf971c-0a34-4f33-bf9e-66afa3d4d65b︠









