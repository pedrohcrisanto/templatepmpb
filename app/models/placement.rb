class Placement < ApplicationRecord

  belongs_to :user
  belongs_to :unit

  validates :user, :unit, presence: true

  before_save :set_start_date

  def archive_placement
    self.end_date = Time.now
  end

  private
    def set_start_date
      self.start_date = Time.now
    end

end
