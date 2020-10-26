# frozen_string_literal: true

class PetriRunReflex < ApplicationReflex

  def mark_inoculated
    @petri_run = PetriRun.find(element.dataset.id)
    @petri_run.update(inoculated: true, inoculated_at: Time.now)
  end

  def mark_not_inoculated
    @petri_run = PetriRun.find(element.dataset.id)
    @petri_run.update(inoculated: false, inoculated_at: nil)
  end

  def mark_started
    @petri_run = PetriRun.find(element.dataset.id)
    @petri_run.update(run_started: true, run_started_at: Time.now)
  end

  def mark_not_started
    @petri_run = PetriRun.find(element.dataset.id)
    @petri_run.update(run_started: false, run_started_at: nil)
  end

  def mark_fully_colonised
    @petri_run = PetriRun.find(element.dataset.id)
    @petri_run.update(fully_colonised: true, fully_colonised_at: Time.now)
  end

  def mark_not_fully_colonised
    @petri_run = PetriRun.find(element.dataset.id)
    @petri_run.update(fully_colonised: false, fully_colonised_at: nil)
  end



  # Add Reflex methods in this file.
  #
  # All Reflex instances expose the following properties:
  #
  #   - connection - the ActionCable connection
  #   - channel - the ActionCable channel
  #   - request - an ActionDispatch::Request proxy for the socket connection
  #   - session - the ActionDispatch::Session store for the current visitor
  #   - url - the URL of the page that triggered the reflex
  #   - element - a Hash like object that represents the HTML element that triggered the reflex
  #   - params - parameters from the element's closest form (if any)
  #
  # Example:
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com

end
