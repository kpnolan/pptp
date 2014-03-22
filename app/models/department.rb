module FindOrCreateByNameExtension
  def find_or_create_by_name(name)
    find_or_create_by(name: name)
  end
end

class Department < ActiveRecord::Base
  has_many :police, inverse_of: :police, extend: FindOrCreateByNameExtension
  validates :name, presence: true, uniqueness: true
end
