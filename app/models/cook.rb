class Cook < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_many :produceselecteds
end
