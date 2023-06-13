class Card < ApplicationRecord
  include AttrJson::Record
  include AttrJson::NestedAttributes

  attr_json :todos, Todo.to_type, array: true, accepts_nested_attributes: { reject_if: :all_blank }
  # attr_json :quotes, Quote.to_type, array: true, accepts_nested_attributes: { reject_if: :all_blank }
  belongs_to :project
  has_many :comments
end
