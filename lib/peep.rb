require 'pg'

class Chitter_twitter
  def self.all
    @peeps = ["Welcome to twitter!",
    "Chitter your heart away! <3 "]
  end

  def self.create(peep)
    connection = PG.connect(dbname: 'chitter_twitter')
    connection.exec("INSERT INTO Peeps (chitter_twitter) VALUES('#{chitter_twitter}');")
  end
end
