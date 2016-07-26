class Gardener < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_many :produceavailables
end
