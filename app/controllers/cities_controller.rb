class CitiesController < ApplicationController
  def index
    @cities = City.all

    render("city_templates/index.html.erb")
  end

  def show
    @travel_persona = TravelPersona.new
    @city = City.find(params.fetch("id_to_display"))

    render("city_templates/show.html.erb")
  end

  def new_form
    @city = City.new

    render("city_templates/new_form.html.erb")
  end

  def create_row
    @city = City.new

    @city.city_name = params.fetch("city_name")

    if @city.valid?
      @city.save

      redirect_back(:fallback_location => "/cities", :notice => "City created successfully.")
    else
      render("city_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @city = City.find(params.fetch("prefill_with_id"))

    render("city_templates/edit_form.html.erb")
  end

  def update_row
    @city = City.find(params.fetch("id_to_modify"))

    @city.city_name = params.fetch("city_name")

    if @city.valid?
      @city.save

      redirect_to("/cities/#{@city.id}", :notice => "City updated successfully.")
    else
      render("city_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @city = City.find(params.fetch("id_to_remove"))

    @city.destroy

    redirect_to("/cities", :notice => "City deleted successfully.")
  end
end
