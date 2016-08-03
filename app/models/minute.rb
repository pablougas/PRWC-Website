class Minute < ActiveRecord::Base
    has_many :agendas, dependent: :destroy
    accepts_nested_attributes_for :agendas, reject_if: :all_blank, allow_destroy: true
end
