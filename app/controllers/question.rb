#==============================
#== Controlador de Preguntas ==
#==============================
post '/make/question' do 
  if params[:category]!="" && params[:title]!="" && params[:body]!=""
    if Question.create(user_id:session[:user_id],category_id:params[:category].to_i,title:params[:title],body:params[:body],likes:0)
    return "yes"
    else
    return nil
    end 
  else
    return nil
  end
end

get '/question/like/:id' do
  question=Question.find(params[:id])
  if question
    question.likes += 1
    question.save
  end
  redirect  '/'
end





#==============================
#== Controlador de Preguntas ==
#==============================