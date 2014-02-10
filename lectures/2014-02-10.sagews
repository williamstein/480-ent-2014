︠01c8fdb0-dcda-47b3-9a9f-c5290067c78fi︠
%md
# February 10, 2014: Elliptic Curves
︡8c522528-7df9-484f-84f3-6b05e16c1a15︡{"html":"<h1>February 10, 2014: Elliptic Curves Cryptography</h1>\n"}︡
︠3c90b4dd-9020-46b5-b730-d90ac5439dc1︠


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
# Define group operation (assumes points *distinct*)
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
︠2c249f7f-08bd-4d28-9ab4-e22e8127398bi︠

%md
## Next, we'll talk about 2014-02-07.sagews (Diffie-Hellman)...
︡95fabd2e-18ee-4e50-80da-5bdd14660d1e︡{"html":"<h2>Next, we&#8217;ll talk about 2014-02-07.sagews (Diffie-Hellman)&#8230;</h2>\n"}︡
︠084ca501-a224-4f2e-9034-db77a70dee5f︠









