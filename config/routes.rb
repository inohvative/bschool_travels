Rails.application.routes.draw do
  # Routes for the City resource:

  # CREATE
  get("/cities/new", { :controller => "cities", :action => "new_form" })
  post("/create_city", { :controller => "cities", :action => "create_row" })

  # READ
  get("/cities", { :controller => "cities", :action => "index" })
  get("/cities/:id_to_display", { :controller => "cities", :action => "show" })

  # UPDATE
  get("/cities/:prefill_with_id/edit", { :controller => "cities", :action => "edit_form" })
  post("/update_city/:id_to_modify", { :controller => "cities", :action => "update_row" })

  # DELETE
  get("/delete_city/:id_to_remove", { :controller => "cities", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # Routes for the Activity resource:

  # CREATE
  get("/activities/new", { :controller => "activities", :action => "new_form" })
  post("/create_activity", { :controller => "activities", :action => "create_row" })

  # READ
  get("/activities", { :controller => "activities", :action => "index" })
  get("/activities/:id_to_display", { :controller => "activities", :action => "show" })

  # UPDATE
  get("/activities/:prefill_with_id/edit", { :controller => "activities", :action => "edit_form" })
  post("/update_activity/:id_to_modify", { :controller => "activities", :action => "update_row" })

  # DELETE
  get("/delete_activity/:id_to_remove", { :controller => "activities", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
