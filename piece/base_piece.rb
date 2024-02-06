# frozen_string_literal: true

class BasePiece

  def move
    raise NotImplementedError, 'Implement this method in a child class'
  end

  private
  def valid_move?
    raise NotImplementedError, 'Implement this method in a child class'
  end

end
