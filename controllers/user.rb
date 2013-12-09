class BookmarkManager  < Sinatra::Application
   get '/users/new' do
     @user = User.new
     haml :'users/new'
   end

  post '/users' do
    @user = User.create(email: params[:email],
                       password: params[:password],
                       password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      redirect to('/')
    else
      flash.now[:errors] = @user.errors.full_messages
      haml :'/users/new'
    end
  end
end