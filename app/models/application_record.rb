class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  

  def full_name
    last_name.capitalize + ", " + first_name.capitalize
  end
end
