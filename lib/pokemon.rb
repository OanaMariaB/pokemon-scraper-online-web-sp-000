class Pokemon
  attr_accessor :name, :type, :db, :id

  def initialize(name:, type:, db:, id: "nil")
    @name = name
    @type = type
    @db = db
    @id = id
 end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def self.find(id)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
  end

end #class
