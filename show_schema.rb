require 'sqlite3'
require 'rulers/sqlite_model'

class Quote < Rulers::Model::SQLite; end
STDERR.puts Quote.schema.inspect
