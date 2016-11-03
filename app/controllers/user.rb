#=============================
#== Controlador de Usuarios ==
#=============================

post '/user/reg' do
  @user = User.new(name:params[:name],user_name:params[:user_name],email:params[:email],img:'user.jpeg',category:false)
  @user.password=params[:password]
  if @user.save
    session[:user_id]=@user.id
    return erb :in , layout: false
  else
    return erb :error , layout: false
  end
end

post '/user/ini' do
  @user = User.authenticate(params[:email],params[:password])
  if @user
    session[:user_id] = @user.id
    @cat = []
    @user.categories.each do |x|
      @cat << x.name
    end
    return erb :kuora , layout: false
  else
    return erb :error , layout: false
  end
end

post '/user/mod' do
  p params
  @user = User.find(session[:user_id])
  @user.name = params[:name] if params[:name] != ""
  @user.email = params[:email] if params[:email] != ""
  @user.password = params[:password] if params[:password] != ""
  if @user.save
    @user = User.find(session[:user_id])
    return erb :in , layout: false
  else
    return erb :error , layout: false
  end
end

get '/user/out' do
  session.clear
  redirect  '/' 
end

#=============================
#== Controlador de Usuarios ==
#=============================