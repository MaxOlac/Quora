#================================
#== Controlador  de Respuestas ==
#================================

get '/answers/:question_id' do
  @question = Question.find(params[:question_id])
  @answers = @question.answers  
  erb :answers
end

post '/answers/:question_id/new' do
  p params
  @question = Question.find(params[:question_id])
  @user = User.find(session[:user_id])
  @answer = @question.answers.create(title: params[:title],body: params[:respuesta],likes: 0)
  @answer = @answer.update!(user_id: @user.id)
  redirect request.env['HTTP_REFERER']
end
#================================
#== Controlador  de Respuestas ==
#================================