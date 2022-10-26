class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

   
    
    get "/" do
        return "Welcome to NewsApp"
    end

    post "/login" do
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            user.to_json
        else
            error = {
                error: "Invalid username or password"
            }
            return error.to_json
        end
    end

    get "/users" do
        users = User.all
        users.to_json
    end

    get "/users/:id" do
        user = User.find(params[:id])
        user.to_json
    end

    post "/users" do
        user = User.create( username:params[:username], 
            email:params[:email], password:params[:password], bio:params[:bio],
            avatar:params[:avatar])
        user.to_json
    end

    patch "/users/:id" do
        user = User.update(username:params[:username], 
            email:params[:email], password:params[:password], bio:params[:bio],
            avatar:params[:avatar])
        user.to_json
    end

    delete "/users/:id" do
        user = User.find(params[:id])
        user.destroy
    end

    get "/newsletters" do
        news = Newsletter.all
        news.to_json
    end


    get "/newsletters/:id" do
        news = Newsletter.find(params[:id])
        news.to_json
    end

    

    post "/newsletters" do
        news = Newsletter.create(
            title:params[:title],
            description:params[:description],
            image: params[:image],
            user_id: params[:user_id],
        )
        news.to_json
    end

    patch "/newsletters/:id" do
        news = Newsletter.find(params[:id])
        if news
            news.update(
            title:params[:title],
            description:params[:description],
            image: params[:image],
            user_id: params[:user_id],
        )
        news.to_json
        else
            return "news not found"
        end
    end

end