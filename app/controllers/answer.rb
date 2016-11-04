#================================
#== Controlador  de Respuestas ==
#================================

get '/answers/:question_id' do
  @question = Question.find(params[:question_id])
  @answers = @question.answers  
  erb :answers
end

#================================
#== Controlador  de Respuestas ==
#================================