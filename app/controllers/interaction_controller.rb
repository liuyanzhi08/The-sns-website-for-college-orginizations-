require "will_paginate"
class InteractionController < ApplicationController
def index

  @new_activities = Activity.paginate :page => params[:page], :per_page => 5, :order => 'created_at DESC'

  @society = Society.find(session[:society_id])
end


end
