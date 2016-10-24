String[] valeurs;
float valeur = 0.0;
float angle = 0.0;
float x = 0.0;
float y = 0.0;

void setup()
{
  size(600,600);
  valeurs = loadStrings("valeurs.txt");
}

void draw()
{
  background(255);
  translate(300,300);
  stroke(0);
  for (int i=0; i<valeurs.length; i=i+1)
  {
    valeur = float( valeurs[i] );
    angle = radians(360.0 / valeurs.length * i);
    x = cos(angle);
    y = sin(angle);
    line(60*x,60*y,(60+valeur/2)*x,(60+valeur/2)*y);

   }
}