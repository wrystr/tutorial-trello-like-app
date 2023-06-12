class Todo
  include AttrJson::Model

  attr_json :content, :string
  attr_json :status, :boolean, default: false
end