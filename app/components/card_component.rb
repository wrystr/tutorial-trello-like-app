# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  attr_reader :id, :title, :subtitle

  def initialize(title, options={})
    @title = title
    @id = options[:id] || ""
    @subtitle = options[:subtitle] || ""
  end
end
