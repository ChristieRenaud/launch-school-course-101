nouns = ["spider", "car", "apple", "baby", "head", "house"]
adjectives = ["happy", "sad", "pretty", "purple", "sunny", "smart", "big"]
verbs = ["hugs", "tickles", "runs", "throws", "opens"]
adverbs = ["happily", "slowly", "quickly", "angrily", "sleepily"]
words = { noun: nouns.sample,
          adjective: adjectives.sample,
          verb: verbs.sample,
          adverb:  adverbs.sample }

text = File.read("madlibs.text") % words


puts text

