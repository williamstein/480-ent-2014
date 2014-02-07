︠cfae614f-e29d-41d2-b462-682314a1227ei︠
%md
# February 3, 2014: Elliptic Curves...

 - Feb 3 whiteboard: <http://youtu.be/YRX3nAhBzCw>
 - Feb 5 whiteboard: <http://youtu.be/EQPQr1kuA3E>


︡e14a8fa7-5d32-48dd-b2f7-0248341a6a0a︡{"html":"<h1>February 3, 2014: Elliptic Curves&#8230;</h1>\n\n<ul>\n<li>Feb 3 whiteboard: <a href=\"http://youtu.be/YRX3nAhBzCw\">http://youtu.be/YRX3nAhBzCw</a></li>\n<li>Feb 5 whiteboard: <a href=\"http://youtu.be/EQPQr1kuA3E\">http://youtu.be/EQPQr1kuA3E</a></li>\n</ul>\n"}︡
︠eb4b9219-083b-498a-a151-0f90c3531bd9i︠
%md
## Whiteboard

 - Linear equations (one equation)
 - Quadratic equations (one equation): Pythagorean triples and that you can enumerate them (how=homework)
 - Cubic equations: um, a "little bit" harder than linear and quadratic -- focus on **elliptic curves** for now
︡6297990c-412c-414d-9254-d325f18f2a04︡{"html":"<h2>Whiteboard</h2>\n\n<ul>\n<li>Linear equations (one equation)</li>\n<li>Quadratic equations (one equation): Pythagorean triples and that you can enumerate them (how=homework)</li>\n<li>Cubic equations: um, a &#8220;little bit&#8221; harder than linear and quadratic &#8211; focus on <strong>elliptic curves</strong> for now</li>\n</ul>\n"}︡
︠4e4fbd5b-6bae-45c8-bb18-de7a9a180e94i︠
%md
## Elliptic Curve Examples
︡bc67a9ad-68ae-4fd4-9a90-0e329756ea28︡{"html":"<h2>Elliptic Curve Examples</h2>\n"}︡
︠725bc7a5-1a1b-4a65-ac25-e37dbf1e8ebci︠
%md
### An Elliptic Curve over $\mathbf{Q}$
︡05117891-0b64-40fb-8b96-d69184f81db3︡{"html":"<h3>An Elliptic Curve over $\\mathbf{Q}$</h3>\n"}︡
︠31fec1fe-fc68-4136-839d-c5560e94a772︠
E = EllipticCurve([-5,4])
E
︡982c66ec-429c-4c49-83fb-bf12cae50529︡{"stdout":"Elliptic Curve defined by y^2 = x^3 - 5*x + 4 over Rational Field\n"}︡
︠56f33a87-2a34-45bb-bc88-116b251f231d︠

︠3d6f4220-90cc-4ee5-a650-5d73c76f7021︠

︠d7eaf374-51b7-4fe6-af1c-bd6e92d43f05︠
# zero element of the group
E(0)
︡e29a77ce-7de5-4672-8e83-95de0a29b5f0︡{"stdout":"(0 : 1 : 0)\n"}︡
︠7e8ccca2-5bcd-4a3c-b601-0e65e9f1801d︠
# two points
P = E([1,0]); Q = E([0,2])
print "P =", P
print "Q =", Q
︡2c733525-43dc-4451-933a-7e0aeaeed98c︡{"stdout":"P = (1 : 0 : 1)\n"}︡{"stdout":"Q = (0 : 2 : 1)\n"}︡
︠62cd0083-eea5-400d-82e8-209d0b95b06c︠
g = plot(E) + point(P[:2],color='red',pointsize=50) + point(Q[:2],color='purple',pointsize=50)
g.show(svg=True, frame=True, gridlines=True)
︡3db5c7f3-f977-4785-993d-a9a83d8af942︡{"once":false,"file":{"show":true,"uuid":"f4d1447a-3f0f-461d-b59f-6c28f280f901","filename":"/projects/289c86ee-94a2-4ad5-be71-70def0d6eb09/.sage/temp/compute6a/10162/tmp_mqYnmA.svg"}}︡
︠cec0fbff-811f-4556-8211-2875b80dc095︠
P+Q
︡1d2a5816-6d46-4a67-ae20-f58a3f9ebf25︡{"stdout":"(3 : 4 : 1)\n"}︡
︠5d252be4-bdfc-4532-b045-4866b8e54db8︠
4*Q
︡09e59e90-b84e-4752-bb24-39ea284f1848︡{"stdout":"(352225/576 : 209039023/13824 : 1)\n"}︡
︠423cb760-423f-4b68-b7c8-0ecec379b3c2︠
# y^2 = x^3 - 5*x + 4
(209039023/13824)^2 == (352225/576)^3 - 5*(352225/576) + 4
︡78898078-c541-4694-a718-e423459802f1︡{"stdout":"True\n"}︡
︠10677575-0134-4038-941b-4767b1e6adbb︠
8*Q
︠0e0b3881-5992-4e20-87f9-ba235baf8e30︠
16*Q
︠0d5dfad8-a1e8-449c-81ac-b8a0ff88333a︠
32*Q
︠5598d8da-40f2-4964-872d-307e6ec18ccf︠

︠0b5fb69a-9ebe-4ebb-85c0-48464619f3bf︠

︠75dab9f1-8485-4ef6-b1c2-5fb3313f2b4ei︠
%md
### An Elliptic Curve Modulo $p$
︡73e917d9-dafe-4183-a17a-78bf608b0270︡{"html":"<h3>An Elliptic Curve Modulo $p$</h3>\n"}︡
︠119dea00-763f-4b84-aa91-077e24524023︠
E = EllipticCurve(Integers(59), [1,54])
E
︡f7b6de16-d2e4-4f52-909d-e54923220c58︡{"stdout":"Elliptic Curve defined by y^2 = x^3 + x + 54 over Ring of integers modulo 59\n"}︡
︠f581dfb2-de5a-485b-9e06-2eae70bd0878︠
E.plot(pointsize=50).show(gridlines=True, svg=True, frame=True)
︡211b0b21-4749-49ee-a847-1da7286b300f︡{"once":false,"file":{"show":true,"uuid":"2a355e98-bb41-4d9b-8fec-90fad5839c4c","filename":"/projects/289c86ee-94a2-4ad5-be71-70def0d6eb09/.sage/temp/compute6a/10162/tmp_l8PN9F.svg"}}︡
︠4ee87b94-e9d3-4eb3-ab22-03e5608e0b9a︠
E.cardinality()
︡cbf8e070-c310-41a3-97e3-d484c7fc7b74︡{"stdout":"57\n"}︡
︠1f945f1f-9922-48a9-a3b2-3cd2cef11d9d︠
P = E.points()[5]; Q = E.points()[7]
print "P =", P
print "Q =", Q
︡2e822c51-48f1-47bb-9d65-ba894ecabf46︡{"stdout":"P = (4 : 2 : 1)\n"}︡{"stdout":"Q = (5 : 19 : 1)\n"}︡
︠30a2b464-d304-4f37-bb61-bfc4890213ba︠
P + Q
︡2abb0600-209c-4af8-a83a-6b0007066a90︡{"stdout":"(44 : 26 : 1)\n"}︡
︠2c06e3b3-d621-4341-87b6-eb5818c96eb6i︠
%md
### Things to come:

- Elliptic curves modulo a huge prime $p$ for creating cryptosystems
- Fake elliptic curves modulo a composite number $n=pm$ for trying to factor
- Elliptic curves over the rational numbers for understanding Diophantine equations such as the one in Fermat's Last Theorem
︡8f57336e-34a9-4b34-a5e0-318b86fc2337︡{"html":"<h3>Things to come:</h3>\n\n<ul>\n<li>Elliptic curves modulo a huge prime $p$ for creating cryptosystems</li>\n<li>Fake elliptic curves modulo a composite number $n=pm$ for trying to factor</li>\n<li>Elliptic curves over the rational numbers for understanding Diophantine equations such as the one in Fermat&#8217;s Last Theorem</li>\n</ul>\n"}︡
︠87023bf3-ef9c-4fba-addf-5424677117b0︠

︠4f46d435-a396-441d-afe0-ec2f214f0651︠

︠7dc816b8-ef28-4632-9b17-9ddc6b2f0969i︠
%md
## Computational verification that the group law is associative (over $\mathbf{Q}$, for distinct points).

Our curve is $y^2=x^3+ax+b$ and the three points are $(x_1,y_1), (x_2,y_2), (x_3,y_3)$.
︡c9228c5d-f97d-4e07-83a6-4f611707e947︡{"html":"<h2>Computational verification that the group law is associative (over $\\mathbf{Q}$, for distinct points).</h2>\n\n<p>Our curve is $y^2=x^3+ax+b$ and the three points are $(x_1,y_1), (x_2,y_2), (x_3,y_3)$.</p>\n"}︡
︠1572d6dd-e899-4bfd-bd85-f9bd0001ec56︠
# Create the polynomial ring in x1-y3 and a,b
R.<x1,y1,x2,y2,x3,y3,a,b> = QQ[]
R
︡d0b70e9b-0e0c-4994-bcb5-1c855f24d360︡{"stdout":"Multivariate Polynomial Ring in x1, y1, x2, y2, x3, y3, a, b over Rational Field\n"}︡
︠03bf60a3-8bf8-437a-bf3e-17d2e09d36bd︠
# Impose relations
rels = [y1^2 - (x1^3 + a*x1 + b), y2^2 - (x2^3 + a*x2 + b), y3^2 - (x3^3 + a*x3 + b)]
Q = R.quotient(rels)
Q
︡e91fc85e-ef34-41a9-9fca-589f1eee13dd︡{"stdout":"Quotient of Multivariate Polynomial Ring in x1, y1, x2, y2, x3, y3, a, b over Rational Field by the ideal (-x1^3 + y1^2 - x1*a - b, -x2^3 + y2^2 - x2*a - b, -x3^3 + y3^2 - x3*a - b)\n"}︡
︠4f2adad3-2291-412c-abbb-ba6965dc3d07︠
# Define group operation (assumes points distinct)
def op(P1,P2):
    x1,y1 = P1
    x2,y2 = P2
    lam = (y1-y2)/(x1-x2)
    nu  = y1-lam*x1
    x3  = lam^2 - x1 - x2
    y3  = -lam*x3 - nu
    return (x3, y3)
︡9e0d20a8-2dd1-40ef-80ff-dfbbe1fe74ca︡
︠4d990ff8-1474-4dd7-8b46-741ef143340a︠
# Define points and add them associating both ways
P1 = (x1,y1); P2 = (x2,y2); P3 = (x3,y3)
Z = op(P1, op(P2,P3)); W = op(op(P1,P2),P3)
︡7f2c250f-d06f-4985-a2b2-552b1d7f7932︡
︠3aa594da-abf6-4370-91a1-d12a2631bc2c︠
# Check that Z and W define the same point
(Q(Z[0].numerator()*W[0].denominator() - Z[0].denominator()*W[0].numerator())) == 0
(Q(Z[1].numerator()*W[1].denominator() - Z[1].denominator()*W[1].numerator())) == 0
︡4f2c912d-75cb-45eb-acf1-a5fa2a14c652︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡
︠2c249f7f-08bd-4d28-9ab4-e22e8127398b︠









