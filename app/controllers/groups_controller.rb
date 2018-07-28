class GroupsController < ApplicationController
  def new
  end

  def create
    group = Group.new
    group.name = params[:group][:name]
    group.save
  end

end
