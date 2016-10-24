// Importation des librairies temboo
import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.*;

// Objet de type TemboSession qui stocke les informations
// relatives à l'application twitter
TembooSession session = new TembooSession("v3ga", "myFirstApp", "ySJFHbs1XKtuzAmsewgqmERpVa4fBJs9");

// Profil Twitter sur Temboo
String twitterProfile = "M1Rencontres";

// Objet de type JSONObjet qui va stocker les tweets retournés 
JSONArray tweets;

// ----------------------------------------------
void setup() 
{
  tweets = findTweets("rencontre");
  
  println( tweets.getJSONObject(0).getString("text") );
}

// ----------------------------------------------
void draw()
{

}