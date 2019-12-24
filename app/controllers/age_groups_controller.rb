class AgeGroupsController < ApplicationController
  def index
    @age_groups = AgeGroup.all

    render("age_group_templates/index.html.erb")
  end

  def show
    @travel_persona = TravelPersona.new
    @age_group = AgeGroup.find(params.fetch("id_to_display"))

    render("age_group_templates/show.html.erb")
  end

  def new_form
    @age_group = AgeGroup.new

    render("age_group_templates/new_form.html.erb")
  end

  def create_row
    @age_group = AgeGroup.new

    @age_group.age_cohort = params.fetch("age_cohort")

    if @age_group.valid?
      @age_group.save

      redirect_back(:fallback_location => "/age_groups", :notice => "Age group created successfully.")
    else
      render("age_group_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @age_group = AgeGroup.find(params.fetch("prefill_with_id"))

    render("age_group_templates/edit_form.html.erb")
  end

  def update_row
    @age_group = AgeGroup.find(params.fetch("id_to_modify"))

    @age_group.age_cohort = params.fetch("age_cohort")

    if @age_group.valid?
      @age_group.save

      redirect_to("/age_groups/#{@age_group.id}", :notice => "Age group updated successfully.")
    else
      render("age_group_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @age_group = AgeGroup.find(params.fetch("id_to_remove"))

    @age_group.destroy

    redirect_to("/age_groups", :notice => "Age group deleted successfully.")
  end
end
