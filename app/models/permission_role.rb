class PermissionRole < ApplicationRecord

  has_paper_trail

  belongs_to :permission
  belongs_to :role

end
