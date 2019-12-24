Rails.application.routes.draw do
  # Routes for the Age group resource:

  # CREATE
  get("/age_groups/new", { :controller => "age_groups", :action => "new_form" })
  post("/create_age_group", { :controller => "age_groups", :action => "create_row" })

  # READ
  get("/age_groups", { :controller => "age_groups", :action => "index" })
  get("/age_groups/:id_to_display", { :controller => "age_groups", :action => "show" })

  # UPDATE
  get("/age_groups/:prefill_with_id/edit", { :controller => "age_groups", :action => "edit_form" })
  post("/update_age_group/:id_to_modify", { :controller => "age_groups", :action => "update_row" })

  # DELETE
  get("/delete_age_group/:id_to_remove", { :controller => "age_groups", :action => "destroy_row" })

  #------------------------------

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
