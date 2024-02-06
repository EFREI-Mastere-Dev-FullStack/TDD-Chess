# frozen_string_literal: true

class BasePiece

  attr_accessor :current_coordinate
  def initialize(current_coordinate:)
    @current_coordinate = current_coordinate
  end

  def move
    raise NotImplementedError, 'Implement this method in a child class'
  end

  def valid_move?
    raise NotImplementedError, 'Implement this method in a child class'
  end

end
