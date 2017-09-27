Rails.application.routes.draw do
  # Routes for the Bookmark_venue resource:
  # CREATE
  get "/bookmark_venues/new", :controller => "bookmark_venues", :action => "new"
  post "/create_bookmark_venue", :controller => "bookmark_venues", :action => "create"

  # READ
  get "/bookmark_venues", :controller => "bookmark_venues", :action => "index"
  get "/bookmark_venues/:id", :controller => "bookmark_venues", :action => "show"

  # UPDATE
  get "/bookmark_venues/:id/edit", :controller => "bookmark_venues", :action => "edit"
  post "/update_bookmark_venue/:id", :controller => "bookmark_venues", :action => "update"

  # DELETE
  get "/delete_bookmark_venue/:id", :controller => "bookmark_venues", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark_dish resource:
  # CREATE
  get "/bookmark_dishes/new", :controller => "bookmark_dishes", :action => "new"
  post "/create_bookmark_dish", :controller => "bookmark_dishes", :action => "create"

  # READ
  get "/bookmark_dishes", :controller => "bookmark_dishes", :action => "index"
  get "/bookmark_dishes/:id", :controller => "bookmark_dishes", :action => "show"

  # UPDATE
  get "/bookmark_dishes/:id/edit", :controller => "bookmark_dishes", :action => "edit"
  post "/update_bookmark_dish/:id", :controller => "bookmark_dishes", :action => "update"

  # DELETE
  get "/delete_bookmark_dish/:id", :controller => "bookmark_dishes", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Cuisine resource:
  # CREATE
  get "/cuisines/new", :controller => "cuisines", :action => "new"
  post "/create_cuisine", :controller => "cuisines", :action => "create"

  # READ
  get "/cuisines", :controller => "cuisines", :action => "index"
  get "/cuisines/:id", :controller => "cuisines", :action => "show"

  # UPDATE
  get "/cuisines/:id/edit", :controller => "cuisines", :action => "edit"
  post "/update_cuisine/:id", :controller => "cuisines", :action => "update"

  # DELETE
  get "/delete_cuisine/:id", :controller => "cuisines", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
