class Event < ApplicationRecord
  belongs_to :group

  def group_name 
    group.try(:name);
  end

  def group_name=(name) 
    self.group = Group.find_or_create_by(name: name) if name.present?
  end
end
