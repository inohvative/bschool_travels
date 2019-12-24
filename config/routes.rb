Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "activities#index"
  # Routes for the Travel persona resource:

  # CREATE
  get("/travel_personas/new", { :controller => "travel_personas", :action => "new_form" })
  post("/create_travel_persona", { :controller => "travel_personas", :action => "create_row" })

  # READ
  get("/travel_personas", { :controller => "travel_personas", :action => "index" })
  get("/travel_personas/:id_to_display", { :controller => "travel_personas", :action => "show" })

  # UPDATE
  get("/travel_personas/:prefill_with_id/edit", { :controller => "travel_personas", :action => "edit_form" })
  post("/update_travel_persona/:id_to_modify", { :controller => "travel_personas", :action => "update_row" })

  # DELETE
  get("/delete_travel_persona/:id_to_remove", { :controller => "travel_personas", :action => "destroy_row" })
  get("/delete_travel_persona_from_party_level/:id_to_remove", { :controller => "travel_personas", :action => "destroy_row_from_party_level" })
  get("/delete_travel_persona_from_age_cohort/:id_to_remove", { :controller => "travel_personas", :action => "destroy_row_from_age_cohort" })
  get("/delete_travel_persona_from_city/:id_to_remove", { :controller => "travel_personas", :action => "destroy_row_from_city" })
  get("/delete_travel_persona_from_user/:id_to_remove", { :controller => "travel_personas", :action => "destroy_row_from_user" })
  get("/delete_travel_persona_from_activities/:id_to_remove", { :controller => "travel_personas", :action => "destroy_row_from_activities" })

  #------------------------------

  # Routes for the Energy level resource:

  # CREATE
  get("/energy_levels/new", { :controller => "energy_levels", :action => "new_form" })
  post("/create_energy_level", { :controller => "energy_levels", :action => "create_row" })

  # READ
  get("/energy_levels", { :controller => "energy_levels", :action => "index" })
  get("/energy_levels/:id_to_display", { :controller => "energy_levels", :action => "show" })

  # UPDATE
  get("/energy_levels/:prefill_with_id/edit", { :controller => "energy_levels", :action => "edit_form" })
  post("/update_energy_level/:id_to_modify", { :controller => "energy_levels", :action => "update_row" })

  # DELETE
  get("/delete_energy_level/:id_to_remove", { :controller => "energy_levels", :action => "destroy_row" })

  #------------------------------

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
