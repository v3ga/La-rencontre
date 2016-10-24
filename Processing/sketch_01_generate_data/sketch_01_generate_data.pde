String[] values = new String[50];
int a = 0;
for (int i=0; i<50; i++)
{
  a = (int)(50+400*0.5*(1.0+random(0.7,0.9)*sin(radians(float(i)/50.0*360))));
  values[i] = ""+a;
}

saveStrings("valeurs.txt", values);