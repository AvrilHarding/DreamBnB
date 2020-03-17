class Space
  attr_reader :name
  def initialize(space_name:)
    @name = name
  end


  def self.create(space_name:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'DreamBnB_test')
    else
      connection = PG.connect(dbname: 'DreamBnB')
    end

    result = connection.exec("INSERT INTO space (space_name) VALUES('#{space_name}')RETURNING space_name;")
    Space.new(space_name: result[0]['space_name'])
  end
end