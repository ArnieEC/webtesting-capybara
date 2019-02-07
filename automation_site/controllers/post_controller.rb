class PostController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")
  set :view, Proc.new { File.join(root, "views") }

configure:development do
  register Sinatra::Reloader
end

  get "/" do
    @title = "Registration Page"
    erb :'posts/index'
  end


  get "/registration_complete" do
    @title = "Registration Complete!"
    erb :'posts/registration_complete'
  end
end
