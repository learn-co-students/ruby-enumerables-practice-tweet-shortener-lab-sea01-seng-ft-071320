def dictionary
  {
    'hello' => 'hi',
    'two' => '2',
    'to' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  tweet.split(" ").map { |word| dictionary[word.downcase] ? dictionary[word.downcase] : word }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  until tweet.length == 137 do
    tweet[-1] = ""
  end

  tweet << "..."
end