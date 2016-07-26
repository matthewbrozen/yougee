class Produceavailable < ActiveRecord::Base
  belongs_to :produce
  belongs_to :gardener
  has_many :produceselecteds
end
