# Este archivo sirve para crear registros de prueba
module Seeds
  def self.user
    User.transaction do
      user = User.new(name:'Maximiliano', user_name:'Max Olac', email:'max@max.com',img:'Max.jpg',category:false)
      user.password = 'max'
      user.save
      user = User.new(name:'Rodrigo', user_name:'Rod', email:'ro@ro.com',img:'rod.jpg',category:false)
      user.password = 'ro'
      user.save
    end    
  end
  def self.category
    Category.transaction do
      category = Category.create(name:'historia',n_questions: 0, n_folowers:0)
      category = Category.create(name:'programacion',n_questions: 0, n_folowers:0)
    end    
  end
  def self.question
    Question.transaction do
      q1 = Question.create(user_id:1,category_id:1,title:'¿Cómo se creó el mundo?',body:'Hace un tiempo que tengo esta duda y me gustaría saber que piensa la gente sobre esto.',likes:0)
      q2 = Question.create(user_id:2,category_id:2,title:'¿Cómo hacer un blog?',body:'Hace un tiempo que tengo esta duda y me gustaría saber que piensa la gente sobre esto.',likes:0)
    end    
  end
  def self.answer
    Answer.transaction do
      a1 = Answer.create(user_id:2,question_id:1,title:'Verdad absoluta',body:'Un día me desperte y lo creé',likes:10)
    end    
  end
  def self.relation
    Relation.transaction do
      r1 = Relation.create(user_id:1,category_id:1)
      r2 = Relation.create(user_id:1,category_id:1)
    end    
  end
end
Seeds.user
Seeds.category
Seeds.question
Seeds.answer
Seeds.relation