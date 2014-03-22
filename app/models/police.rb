require 'csv'

class Police < ActiveRecord::Base
  belongs_to :department, inverse_of: :police
  belongs_to :precinct, inverse_of: :police
  belongs_to :title, inverse_of: :police

  validates_associated :department
  #validates_associated :precinct
  validates_associated :title

  accepts_nested_attributes_for :department, :precinct, :title

  def self.import(path)
    deps = [:department, :title, :precinct]
    CSV.foreach(path, {headers: true, return_headers: false}) do |row|
      attrs = HashWithIndifferentAccess.new(row.to_h)
      dname, tname, pname = *attrs.values_at(*deps)
      police = Police.new(attrs.except(*deps))
      police.department = Department.find_or_create_by(name: dname) unless dname.nil?
      police.title = Title.find_or_create_by(name: tname) unless tname.nil?
      police.precinct = Precinct.find_or_create_by(name: pname) unless pname.nil?
      police.save!
    end
  end
end
