require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'DreamBnB_test')
  connection.exec("TRUNCATE login;")
end

# def add_row_to_test_database
#   connection = PG.connect(dbname: 'chitter_test')
#   connection.exec("INSERT INTO peeps (message) values ('This is a peep!');")
# end
