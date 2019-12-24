class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    render("activity_templates/index.html.erb")
  end

  def show
    @travel_persona = TravelPersona.new
    @activity = Activity.find(params.fetch("id_to_display"))

    render("activity_templates/show.html.erb")
  end

  def new_form
    @activity = Activity.new

    render("activity_templates/new_form.html.erb")
  end

  def create_row
    @activity = Activity.new

    @activity.name = params.fetch("name")
    @activity.user_id = params.fetch("user_id")
    @activity.start_date = params.fetch("start_date")

    if @activity.valid?
      @activity.save

      redirect_back(:fallback_location => "/activities", :notice => "Activity created successfully.")
    else
      render("activity_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @activity = Activity.find(params.fetch("prefill_with_id"))

    render("activity_templates/edit_form.html.erb")
  end

  def update_row
    @activity = Activity.find(params.fetch("id_to_modify"))

    @activity.name = params.fetch("name")
    @activity.user_id = params.fetch("user_id")
    @activity.start_date = params.fetch("start_date")

    if @activity.valid?
      @activity.save

      redirect_to("/activities/#{@activity.id}", :notice => "Activity updated successfully.")
    else
      render("activity_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @activity = Activity.find(params.fetch("id_to_remove"))

    @activity.destroy

    redirect_to("/activities", :notice => "Activity deleted successfully.")
  end
end
