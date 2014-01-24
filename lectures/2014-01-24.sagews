︠21305ab2-f3f9-4b5d-bcd0-6d48521dfd3ai︠
%md
# January 24, 2014: Chinese Remainder Theorem

 - screencast:
 - whiteboard:
︡9c5a8faa-5371-4a5a-8dfc-97adfa6179cc︡{"html":"<h1>Lecture for January 24, 2014: Chinese Remainder Theorem</h1>\n\n<ul>\n<li>screencast:</li>\n<li>whiteboard:</li>\n</ul>\n"}︡
︠aec94b5c-9ae4-46b1-8c36-44004645f86di︠


md(r"""## Try out the Chinese Remainder Theorem
Solve
$$
\begin{eqnarray}
x &\equiv& a \pmod{m}\\
x &\equiv& b \pmod{n}
\end{eqnarray}
$$
""",hide=False)
@interact(layout=[['a','m'],['b','n']])
def _(a=2, m=3, b=3, n=5):
    if gcd(m,n) != 1:
        print "m and n must be coprime, but they have gcd", gcd(m,n)
        return
    t = ZZ((Mod(b,n) - Mod(a,n))/m)
    x = a+t*m
    md("""
Solve for $t$ in $a+tm \\equiv b \\pmod{n}$, i.e., in $%s+ %st \\equiv %s \\pmod{%s}$.

Get $t = %s$.

Letting $x = a+tm = %s$, we have"""%(a,m,b,n,t,x),hide=False)
    md("$$\\begin{eqnarray}%s &\\equiv& %s \\pmod{%s}\\\\%s &\\equiv& %s \\pmod{%s}\\end{eqnarray}$$"%(x,a,m,x,b,n),hide=False)



︡0d36f4a8-7a40-4c14-857d-3a72129f675f︡{"html":"<h2>Try out the Chinese Remainder Theorem</h2>\n\n<p>Solve\n$$\n\\begin{eqnarray}\nx &\\equiv& a \\pmod{m}\\\\\nx &\\equiv& b \\pmod{n}\n\\end{eqnarray}\n$$</p>\n"}︡{"interact":{"style":"None","flicker":false,"layout":[[["a",6,null],["m",6,null]],[["b",6,null],["n",6,null]],[["",12,null]]],"id":"38eb4db3-8948-47ed-868b-5690b00e4f30","controls":[{"control_type":"input-box","default":2,"label":"a","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":3,"label":"m","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"m","type":null},{"control_type":"input-box","default":3,"label":"b","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":5,"label":"n","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"n","type":null}]}}︡
︠98e918e7-754f-442f-a3c8-7464543dd138︠









