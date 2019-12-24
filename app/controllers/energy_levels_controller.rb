class EnergyLevelsController < ApplicationController
  def index
    @energy_levels = EnergyLevel.all

    render("energy_level_templates/index.html.erb")
  end

  def show
    @travel_persona = TravelPersona.new
    @energy_level = EnergyLevel.find(params.fetch("id_to_display"))

    render("energy_level_templates/show.html.erb")
  end

  def new_form
    @energy_level = EnergyLevel.new

    render("energy_level_templates/new_form.html.erb")
  end

  def create_row
    @energy_level = EnergyLevel.new

    @energy_level.party_level = params.fetch("party_level")

    if @energy_level.valid?
      @energy_level.save

      redirect_back(:fallback_location => "/energy_levels", :notice => "Energy level created successfully.")
    else
      render("energy_level_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @energy_level = EnergyLevel.find(params.fetch("prefill_with_id"))

    render("energy_level_templates/edit_form.html.erb")
  end

  def update_row
    @energy_level = EnergyLevel.find(params.fetch("id_to_modify"))

    @energy_level.party_level = params.fetch("party_level")

    if @energy_level.valid?
      @energy_level.save

      redirect_to("/energy_levels/#{@energy_level.id}", :notice => "Energy level updated successfully.")
    else
      render("energy_level_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @energy_level = EnergyLevel.find(params.fetch("id_to_remove"))

    @energy_level.destroy

    redirect_to("/energy_levels", :notice => "Energy level deleted successfully.")
  end
end
