if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="slides-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

unitsize(3.14mm);

pen the_blue = blue;
// pen the_red = linetype(new real[] {0.4,1.8}) + red;
pen the_red = red;

currentpen = the_blue;
draw((0.3,1)^^(-0.3,-1),white);

path wall = (0,1)--(0,-1);
pair origin = (0,0);

picture contract_left;
draw(contract_left, wall);
draw(contract_left, (-0.7,0)--(0,0));
dot(contract_left, (-0.7,0));

void draw_barbell(picture pic = currentpicture, real h = 0.7, pen p = currentpen) {
	draw(pic, (0,h)--(0,-h), p);
	dot(pic, (0,h), p);
	dot(pic, (0,-h), p);
}

void draw_break(picture pic = currentpicture, real h = 0.4, pen p = currentpen) {
	draw(pic, (0,1)--(0,h), p);
	draw(pic, (0,-1)--(0,-h), p);
	dot(pic, (0,h), p);
	dot(pic, (0,-h), p);
}

void sketch(picture pic = currentpicture) {
	// draw(pic, unitcircle, linetype(new real[] {0.1,1.3}) + black);
	draw(pic, unitcircle, dotted + black);
}

void draw_ground(picture pic = currentpicture, real x = 0.6) {
	draw((-x,-1)--(x,-1), black);
}
void draw_ceiling(picture pic = currentpicture, real x = 0.6) {
	draw((-x,1)--(x,1), black);
}

picture face;
draw(face, (3,2)--(1,0)--(3,-2));
draw(face, (-3,2)--(-1,0)--(-3,-2));
draw(face, (1,0)--(-1,0));
face = scale(0.4)*face;

