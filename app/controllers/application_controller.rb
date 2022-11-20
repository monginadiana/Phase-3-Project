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

    get "/blogs" do
        blogs = Blog.all
        blogs.to_json
    end


    get "/blogs/:id" do
        blogs = Blog.find(params[:id])
        blogs.to_json
    end

    

    post "/blogs" do
        blogs = Blog.create(
            title:params[:title],
            description:params[:description],
            image: params[:image],
            likes: params[:likes],
        )
        blogs.to_json
    end

    patch "/blogs/:id" do
        blogs = Blog.find(params[:id])
        if news
            blogs.update(
            title:params[:title],
            description:params[:description],
            image: params[:image],
            user_id: params[:user_id],
        )
        blogs.to_json
        else
            return "news not found"
        end
    end

end