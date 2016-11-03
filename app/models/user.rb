class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_paper_trail

  has_many :placements
  has_many :units, through: :placements
  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :user_permissions
  has_many :permissions, through: :user_permissions

  belongs_to :unit
  belongs_to :military_rank

  validates :first_name, :last_name, :email, presence: true

  before_save :get_roles_from_permissions

  # Dynamic check for user role using the method pattern: has_role_*?
  def method_missing(method_name, *args)
    super if !method_name.to_s.match(/^has_role_(.*)\?$/)
    role_name = method_name.to_s.gsub(/(^has_role_|\?$)/, '')
    has_role?(role_name)
  end

  def update_current_placement
    if !self.unit.nil?
      current_placement = self.placements.last
      current_placement.end_date = Date.now unless current_placement.nil?
      Placement.create(user: self, unit: self.unit, start_date: Date.now)
    end
  end

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  scope :filter_by_first_name, lambda { |keyword| where("lower(first_name) LIKE ?", "%#{keyword.downcase}%") }
  scope :filter_by_last_name, lambda { |keyword| where("lower(last_name) LIKE ?", "%#{keyword.downcase}%") }
  scope :filter_by_unit_ids, lambda { |unit_ids| where("unit_id IN (?)", unit_ids) }

  def self.search(params = {})
    users = User.all
    if params[:units_id].present?
      users = User.filter_by_unit_ids(params[:unit_ids])
    elsif params[:units_id].present? && params[:units_id].empty?
      users = User.none
    end
    users = users.filter_by_first_name(params[:first_name]) if params[:first_name].present?
    # users = users.filter_by_last_name(params[:last_name]) if params[:last_name].present?
    # users = users.filter_by_unit_ids(params[:unit_ids]) if params[:unit_ids].present?
    users
  end

  def has_role?(role_name)
    !self.roles.where(name: role_name).empty?
  end

  def has_permission?(permission_name)
    !self.permissions.where(name: permission_name).empty?
  end

  protected
    def get_roles_from_permissions
      self.roles = self.permissions.map { |p| p.roles }.flat_map { |role| role }
    end

end
