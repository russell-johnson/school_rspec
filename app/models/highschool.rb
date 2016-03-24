class Highschool < ActiveRecord::Base
  def self.by_name
    order(:name)
  end

  def self.by_established
    order(:established)
  end
end
