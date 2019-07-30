class Pokemon

attr_accessor :id, :name, :type, :db 

  def initialize(id:, name:, type:, db:) 
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
<<<<<<< HEAD
    result = db.execute(sql, id)[0]
=======
    result = db.execute(sql, id)[0][0]
>>>>>>> b78e989763b3138b93b2ecf7221147db779ad62f
    Pokemon.new(id: result[0], name: result[1], type: result[2], db: db)
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL
 
<<<<<<< HEAD
     db.execute(sql, name, type)
=======
     db.execute(sql, self.name, self.type)
>>>>>>> b78e989763b3138b93b2ecf7221147db779ad62f
    end
  #end
end