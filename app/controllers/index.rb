enable :sessions
#===========================
#== Controlador Principal ==
#===========================
get '/' do
  session.clear
  if session[:user_id]
    @user = User.find(session[:user_id])
    @cat = []
    @user.categories.each do |x|
      @cat << x.name
    end
    erb :kuora, layout: true
  else
    erb :index
  end
end

#===========================
#== Controlador Principal ==
#===========================