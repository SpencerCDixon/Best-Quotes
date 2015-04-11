require 'sqlite3'
require 'rulers/sqlite_model'

class Quote < Rulers::Model::SQLite; end

mt = Quote.create("submitter" => "Yoda", "quote" => "Do. Or do not. There is no try.")

quotes = ["Life is about making an impact, not making an income.",
 "Whatever the mind of man can conceive and believe, it can achieve. ",
 "Strive not to be a success, but rather to be of value",
 "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference. ",
 "I attribute my success to this: I never gave or took any excuse. ",
 "You miss 100% of the shots you don’t take.",
 "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.",
 "The most difficult thing is the decision to act, the rest is merely tenacity. ",
 "Every strike brings me closer to the next home run. ",
 "Definiteness of purpose is the starting point of all achievement. "]

people = ["Kevin Kruse", "Napolean Hill", "Albert Einstein", "Robert Frost", "Florence Nightinggale", "Wayne Gretzsky", "Michael Jordan", "Amelia Earhart", "Babe Ruth", "W. Clement Stone"]

10.times do |n|
  q = Quote.create("submitter" => people[n - 1], "quote" => quotes[n - 1])
  puts q.submitter + ' added a quote'
end

puts Quote.count.to_s + ' total quotes added.'





