# frozen_string_literal: true

class DeckComponent < ViewComponent::Base
  attr_reader :id

  def initialize(id)
    @id = id
  end

end
