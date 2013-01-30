FormForCompare::Application.routes.draw do

  get "/pictures/new" => 'Pictures#new', :as => "new_picture"
  post "/pictures" => 'Pictures#create'

  get "/pictures" => 'Pictures#index', :as => "pictures"
  get "/pictures/:id" => 'Pictures#show', :as => "picture"

  get "/pictures/:id/edit" => 'Pictures#edit', :as => "edit_picture"
  put "/pictures/:id" => 'Pictures#update'

  delete "/pictures/:id" => 'Pictures#destroy'


  # form tag routes
  get "/new_picture", :controller => "Pictures", :action => "new_picture"
  post "/create_picture", :controller => "Pictures", :action => "create_picture", :as => "create_pictures"

end
