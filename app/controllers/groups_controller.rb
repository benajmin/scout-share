class GroupsController < ApplicationController
  def new
  end

  def create
  	Rails.logger.debug("Aaaaaaaaaah")
    group = Group.new
    group.name = params[:group][:name]
    group.save
  end

end
