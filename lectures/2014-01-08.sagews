︠e7bbe2e2-2351-4e80-b831-4abaad9fd1fei︠
%md
# Lecture 3 (Jan 10, 2014)

- Distribution of primes
- Sage and SageMathCloud

**NOTE**: Andrew Ohana will teach the class on Wed, Jan 15 and Fri, Jan 17.

︡c98abae4-1af0-4ed8-bbb0-aaf2d03dc5ce︡{"html":"<h1>Lecture 3 (Jan 10, 2014)</h1>\n\n<ul>\n<li>Distribution of primes</li>\n<li>Sage and SageMathCloud</li>\n</ul>\n\n<p><strong>NOTE</strong>: Andrew Ohana will teach the class on Wed, Jan 15 and Fri, Jan 17.</p>\n"}︡
︠a3d2f04e-679a-4c1f-8454-4b6221b916a2i︠
%md
## Syllabus

- hand out print copies
- go over in detail
︡8db80d97-a1ba-4ce4-a537-4272b440b3ec︡{"html":"<h2>Syllabus</h2>\n\n<ul>\n<li>hand out print copies</li>\n<li>go over in detail</li>\n</ul>\n"}︡
︠1c404c22-8b68-47b2-80ab-ff0a8aa61fb6i︠
%md
# Prime numbers

2, 3, 5, 7, 11, etc.

An integer $n>1$ is **prime** if it is divisible only by itself.

**Theorem:** *There are infinitely many primes.*

Give proof on the board....

︡43c83659-8a6d-4902-aa64-95612c549494︡{"html":"<h1>Prime numbers</h1>\n\n<p>2, 3, 5, 7, 11, etc.</p>\n\n<p>An integer $n>1$ is <strong>prime</strong> if it is divisible only by itself.</p>\n\n<p><strong>Theorem:</strong> <em>There are infinitely many primes.</em></p>\n\n<p>Give proof on the board&#8230;.</p>\n"}︡
︠0f505ddf-0c80-4d09-be4d-842ed48e8336︠
︠b8d7e258-deea-48ab-8872-2194244c3c7ci︠


%md
# Largest KNOWN Prime

"As of October 2013, the largest known prime number is $2^{57,885,161} − 1$,  a number with 17,425,170 digits." -- see <http://en.wikipedia.org/wiki/Largest_known_prime_number>

This is a Mersenne prime.  It is the 48th Mersenne prime, i.e., of the form $2^p-1$.
︡731d5af4-dffb-4acb-b469-f3b8858df6b7︡{"html":"<h1>Largest KNOWN Prime</h1>\n\n<p>&#8220;As of October 2013, the largest known prime number is $2^{57,885,161} − 1$,  a number with 17,425,170 digits.&#8221; &#8211; see <a href=\"http://en.wikipedia.org/wiki/Largest_known_prime_number\">http://en.wikipedia.org/wiki/Largest_known_prime_number</a></p>\n\n<p>This is a Mersenne prime.  It is the 48th Mersenne prime, i.e., of the form $2^p-1$.</p>\n"}︡
︠e9ff0a6e-1cd2-4274-b21b-116d805ef516︠
%time p = 2^57885161 - 1
︡0d961a7d-1063-4a74-a53a-a0770a2a59cd︡{"stdout":"CPU time: 0.01 s, Wall time: 0.01 s\n"}︡
︠374c3e3c-cd9b-402f-80f7-bff93f486599︠
%time s = str(p)
︡0401401a-c402-408f-ae97-7be7693deeee︡{"stdout":"CPU time: 14.56 s, Wall time: 14.55 s"}︡{"stdout":"\n"}︡
︠646d1634-55e5-4b13-b2a1-fbf6a46398df︠
len(s)
︡9ff7bb6b-6a6d-495e-a561-2902d25ec4f5︡{"stdout":"17425170\n"}︡
︠c4db5cb8-c185-40f6-86bb-cc87f89c7329︠
s[:10] + '...' + s[-10:]
︡42c297ca-1cca-4ba1-a8dd-a7fc6540e7df︡{"stdout":"'5818872662...1724285951'\n"}︡
︠1e9baead-980b-467a-b2ce-48e5f6a64e88i︠
%md

Prizes still...

"150,000 thousand dollars to the first individual or group who discovers a prime number with at least 100,000,000 decimal digits"

<https://www.eff.org/awards/coop>
︡87ef7b6f-2e55-4eae-85f8-95e8596584d2︡{"html":"<p>Prizes still&#8230;</p>\n\n<p>&#8220;150,000 thousand dollars to the first individual or group who discovers a prime number with at least 100,000,000 decimal digits&#8221;</p>\n\n<p><a href=\"https://www.eff.org/awards/coop\">https://www.eff.org/awards/coop</a></p>\n"}︡
︠095f4868-aa60-4dfd-b4e9-a594b040d109︠














