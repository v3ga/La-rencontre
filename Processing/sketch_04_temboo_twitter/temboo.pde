// ----------------------------------------------
JSONArray findTweets(String searchText) 
{
  Tweets tweetsChoreo = new Tweets(session);
  tweetsChoreo.setCredential(twitterProfile);

  // Set inputs
  tweetsChoreo.setQuery(searchText);

  // Run the Choreo and store the results
  TweetsResultSet tweetsResults = tweetsChoreo.run();
  
  // Store results in a JSON object
  JSONObject searchResults = parseJSONObject(tweetsResults.getResponse());
  
  return searchResults.getJSONArray("statuses"); // Create a JSON array of the Twitter statuses in the object
}