class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_many :assignees
  accepts_nested_attributes_for :assignees, reject_if: :all_blank, allow_destroy: true
end
