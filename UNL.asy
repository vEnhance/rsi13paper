size(10cm);
real h = 0.7;
pen s = blue, t = red;
pen dot_s = blue, dot_t = red;
int n = 7;

picture one;
draw(one, (0,0)--(0,h/2)..((0+2)/2.0,h*2)..(2,h/2)--(2,0), s);
draw(one, (2,0)--(2,h/2)..((2+4)/2.0,h*2)..(4,h/2)--(4,0), s);
draw(one, (4,0)--(4,h/2)..((4+6)/2.0,h*2)..(6,h/2)--(6,0), s);
draw(one, (1,0)--(1,h), t);
dot(one, (1,h), dot_t);
draw(one, (3,0)--(3,h), t);
dot(one, (3,h), dot_t);
draw(one, (5,0)--(5,h), t);
dot(one, (5,h), dot_t);
dot(one, (2, h/2), dot_s);
dot(one, (4, h/2), dot_s);

picture two;
draw(two, (0,0)--(0,h/2)..((0+2)/2.0,h*2)..(2,h/2)--(2,0), s);
draw(two, (2,0)--(2,h/2)..((2+4)/2.0,h*2)..(4,h/2)--(4,0), s);
draw(two, (4,0)--(4,h/2)..((4+6)/2.0,h*2)..(6,h/2)--(6,0), s);
draw(two, (1,0)--(1,h), t);
dot(two, (1,h), dot_t);
draw(two, (3,0)--(3,h), t);
dot(two, (3,h), dot_t);
draw(two, (5,0)--(5,h), t);
dot(two, (5,h), dot_t);
dot(two, (2, h/2), dot_s);
dot(two, (4, h/2), dot_s);

add(one); add(reflect((0,0),(1,0))*two);
draw((-1,0)--(7,0));
