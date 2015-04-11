require 'sqlite3'

conn = SQLite3::Database.new "best_quotes.db"
conn.execute <<-SQL
create table quote (
  id INTEGER PRIMARY KEY,
  submitter VARCHAR(60),
  quote VARCHAR(32000));
SQL

puts "Migration complete"
