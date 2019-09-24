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

  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
    pokemon = db.execute(sql, id)[0]
    self.new(pokemon[0], pokemon[1], pokemon [2])
  end

end #class
