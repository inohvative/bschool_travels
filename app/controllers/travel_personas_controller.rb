class TravelPersonasController < ApplicationController
  before_action :current_user_must_be_travel_persona_user, :only => [:edit_form, :update_row, :destroy_row]

  def current_user_must_be_travel_persona_user
    travel_persona = TravelPersona.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_user == travel_persona.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = TravelPersona.ransack(params[:q])
    @travel_personas = @q.result(:distinct => true).includes(:activities, :user, :city, :age_cohort, :party_level).page(params[:page]).per(10)

    render("travel_persona_templates/index.html.erb")
  end

  def show
    @travel_persona = TravelPersona.find(params.fetch("id_to_display"))

    render("travel_persona_templates/show.html.erb")
  end

  def new_form
    @travel_persona = TravelPersona.new

    render("travel_persona_templates/new_form.html.erb")
  end

  def create_row
    @travel_persona = TravelPersona.new

    @travel_persona.user_id = params.fetch("user_id")
    @travel_persona.party_level_id = params.fetch("party_level_id")
    @travel_persona.age_cohort_id = params.fetch("age_cohort_id")
    @travel_persona.activities_id = params.fetch("activities_id")
    @travel_persona.city_id = params.fetch("city_id")

    if @travel_persona.valid?
      @travel_persona.save

      redirect_back(:fallback_location => "/travel_personas", :notice => "Travel persona created successfully.")
    else
      render("travel_persona_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_activity
    @travel_persona = TravelPersona.new

    @travel_persona.user_id = params.fetch("user_id")
    @travel_persona.party_level_id = params.fetch("party_level_id")
    @travel_persona.age_cohort_id = params.fetch("age_cohort_id")
    @travel_persona.activities_id = params.fetch("activities_id")
    @travel_persona.city_id = params.fetch("city_id")

    if @travel_persona.valid?
      @travel_persona.save

      redirect_to("/activities/#{@travel_persona.activities_id}", notice: "TravelPersona created successfully.")
    else
      render("travel_persona_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_city
    @travel_persona = TravelPersona.new

    @travel_persona.user_id = params.fetch("user_id")
    @travel_persona.party_level_id = params.fetch("party_level_id")
    @travel_persona.age_cohort_id = params.fetch("age_cohort_id")
    @travel_persona.activities_id = params.fetch("activities_id")
    @travel_persona.city_id = params.fetch("city_id")

    if @travel_persona.valid?
      @travel_persona.save

      redirect_to("/cities/#{@travel_persona.city_id}", notice: "TravelPersona created successfully.")
    else
      render("travel_persona_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_age_group
    @travel_persona = TravelPersona.new

    @travel_persona.user_id = params.fetch("user_id")
    @travel_persona.party_level_id = params.fetch("party_level_id")
    @travel_persona.age_cohort_id = params.fetch("age_cohort_id")
    @travel_persona.activities_id = params.fetch("activities_id")
    @travel_persona.city_id = params.fetch("city_id")

    if @travel_persona.valid?
      @travel_persona.save

      redirect_to("/age_groups/#{@travel_persona.age_cohort_id}", notice: "TravelPersona created successfully.")
    else
      render("travel_persona_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_energy_level
    @travel_persona = TravelPersona.new

    @travel_persona.user_id = params.fetch("user_id")
    @travel_persona.party_level_id = params.fetch("party_level_id")
    @travel_persona.age_cohort_id = params.fetch("age_cohort_id")
    @travel_persona.activities_id = params.fetch("activities_id")
    @travel_persona.city_id = params.fetch("city_id")

    if @travel_persona.valid?
      @travel_persona.save

      redirect_to("/energy_levels/#{@travel_persona.party_level_id}", notice: "TravelPersona created successfully.")
    else
      render("travel_persona_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @travel_persona = TravelPersona.find(params.fetch("prefill_with_id"))

    render("travel_persona_templates/edit_form.html.erb")
  end

  def update_row
    @travel_persona = TravelPersona.find(params.fetch("id_to_modify"))

    
    @travel_persona.party_level_id = params.fetch("party_level_id")
    @travel_persona.age_cohort_id = params.fetch("age_cohort_id")
    @travel_persona.activities_id = params.fetch("activities_id")
    @travel_persona.city_id = params.fetch("city_id")

    if @travel_persona.valid?
      @travel_persona.save

      redirect_to("/travel_personas/#{@travel_persona.id}", :notice => "Travel persona updated successfully.")
    else
      render("travel_persona_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_activities
    @travel_persona = TravelPersona.find(params.fetch("id_to_remove"))

    @travel_persona.destroy

    redirect_to("/activities/#{@travel_persona.activities_id}", notice: "TravelPersona deleted successfully.")
  end

  def destroy_row_from_user
    @travel_persona = TravelPersona.find(params.fetch("id_to_remove"))

    @travel_persona.destroy

    redirect_to("/users/#{@travel_persona.user_id}", notice: "TravelPersona deleted successfully.")
  end

  def destroy_row_from_city
    @travel_persona = TravelPersona.find(params.fetch("id_to_remove"))

    @travel_persona.destroy

    redirect_to("/cities/#{@travel_persona.city_id}", notice: "TravelPersona deleted successfully.")
  end

  def destroy_row_from_age_cohort
    @travel_persona = TravelPersona.find(params.fetch("id_to_remove"))

    @travel_persona.destroy

    redirect_to("/age_groups/#{@travel_persona.age_cohort_id}", notice: "TravelPersona deleted successfully.")
  end

  def destroy_row_from_party_level
    @travel_persona = TravelPersona.find(params.fetch("id_to_remove"))

    @travel_persona.destroy

    redirect_to("/energy_levels/#{@travel_persona.party_level_id}", notice: "TravelPersona deleted successfully.")
  end

  def destroy_row
    @travel_persona = TravelPersona.find(params.fetch("id_to_remove"))

    @travel_persona.destroy

    redirect_to("/travel_personas", :notice => "Travel persona deleted successfully.")
  end
end
