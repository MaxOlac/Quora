# Este archivo sirve para crear registros de prueba
module Seeds
  def self.user
    User.transaction do
      user = User.new(name:'Maximiliano', email:'max@max.com',category:false)
      user.password = 'max'
      user.save
      user = User.new(name:'Rodrigo', email:'ro@ro.com',category:false)
      user.password = 'ro'
      user.save
    end    
  end
  def self.category
    Category.transaction do
      category = Category.create(name:'historia',n_questions: 0, n_folowers:0)
    end    
  end
  def self.question
    Question.transaction do
      q = Question.create(user_id:1,category_id:1,question:'¿Cómo se creó el mundo?',likes:0)
    end    
  end
  def self.answer
    Answer.transaction do
      a = Answer.create(user_id:2,question_id:1,answer:'Un día me desperte y lo creé',likes:10)
    end    
  end
  def self.relation
    Relation.transaction do
      r = Relation.create(user_id:1,category_id:1)
    end    
  end
end
Seeds.user
Seeds.category
Seeds.question
Seeds.answer
Seeds.relation