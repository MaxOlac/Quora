enable :sessions
#===========================
#== Controlador Principal ==
#===========================
get '/' do
  if session[:user_id]
    @user=User.find(session[:user_id])
    erb :in 
  else
    erb :index
  end
end

#===========================
#== Controlador Principal ==
#===========================