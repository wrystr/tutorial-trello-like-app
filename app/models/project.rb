class Project < ApplicationRecord
  include AttrJson::Record

  attr_json :summary, :string
  has_many :cards
end
