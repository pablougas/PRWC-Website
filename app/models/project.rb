class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_many :assignees, through: :tasks
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :assignees, reject_if: :all_blank, allow_destroy: true

end
