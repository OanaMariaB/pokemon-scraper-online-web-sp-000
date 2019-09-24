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

  def self.find(name, type, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?",num)
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0]
    new_pokemon.name = pokemon[1]
    new_pokemon.type = pokemon[2]
    new_pokemon
  end

end #class
