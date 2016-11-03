class Unit < ApplicationRecord

  has_paper_trail

  belongs_to  :unit, foreign_key: 'parent_id', optional: true
  has_many    :subunits, class_name: 'Unit', foreign_key: 'parent_id'
  has_many    :placements
  has_many    :users

  validates :name, :address, :zip_code, presence: true

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{address} #{zip_code}"
  end

  def self.top_units
    Unit.where(unit: nil)
  end

  def self.unit_tree_for(top_unit, units = [])
    parent_unit = { unit_id: top_unit.id, unit_name: top_unit.name, subunits: [] }
    if !top_unit.subunits.empty?
      top_unit.subunits.each { |u| parent_unit[:subunits] << self.unit_tree_for(u) }
    end
    return parent_unit
  end

end
