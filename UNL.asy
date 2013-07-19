/* DRAGON 0.0.9.6
Homemade Script by v_Enhance. */
import olympiad; import cse5; size(11cm); real lsf=1.2000; real lisf=2011.0; defaultpen(fontsize(10pt));
/* Initialize Objects */
pair A = (-2.5, 2.5);
pair B = (-3.5, -0.5);
pair C = (0.5, -0.5);
pair M = midpoint(B--C);
pair X = foot(B,A,C);
pair Y = foot(C,A,B);
pair K = IntersectionPoint(Line(X,Y,lisf),Line(B,C,lisf));
pair H = orthocenter(A,B,C);
pair D = foot(A,B,C);
pair E = foot(H,A,K);
pair F = (2)*(foot(circumcenter(A,B,C),D,E))-E;
pair A_prime = (2)*(M)-H;
/* Draw objects */
draw(A--B, rgb(0.6,0.2,0.0));
draw(B--C, rgb(0.6,0.2,0.0));
draw(C--A, rgb(0.6,0.2,0.0));
draw(circumcircle(A,B,C), rgb(1.0,0.6,0.0));
draw(CirclebyPoint(M,B), rgb(1.0,0.6,0.0) + dashed);
draw(K--B, rgb(0.8,0.8,0.0) + linewidth(1.0) + linetype("4 4"));
draw(X--K, rgb(0.8,0.8,0.0) + linewidth(1.0) + linetype("4 4"));
draw(A--D, rgb(0.6,0.6,0.0) + dotted);
draw(B--X, rgb(0.6,0.6,0.0) + dotted);
draw(C--Y, rgb(0.6,0.6,0.0) + dotted);
draw(A--K, rgb(0.8,0.8,0.0) + linewidth(1.0) + linetype("4 4"));
draw(E--F, rgb(0.8,0.0,0.2) + linetype("4 4"));
draw(A--A_prime, rgb(0.4,0.0,0.0));
draw(E--A_prime, rgb(0.4,0.0,0.0));
/* Place dots on each point */
dot(A);
dot(B);
dot(C);
dot(M);
dot(X);
dot(Y);
dot(K);
dot(H);
dot(D);
dot(E);
dot(F);
dot(A_prime);
/* Label points */
label("$A$", A, lsf * dir(120));
label("$B$", B, lsf * dir(220));
label("$C$", C, lsf * dir(-40));
label("$M$", M, lsf * dir(225));
label("$X$", X, lsf * dir(60));
label("$Y$", Y, lsf * dir(120));
label("$K$", K, lsf * dir(225));
label("$H$", H, lsf * dir(45));
label("$D$", D, lsf * dir(225));
label("$E$", E, lsf * dir(120));
label("$F$", F, lsf * dir(45));
label("$A'$", A_prime, lsf * dir(65));
