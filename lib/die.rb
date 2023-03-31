require_relative 'auditable'

module ShopiFight
  class Die
  include Auditable
    attr_reader :number

    def initialize
      roll
    end

    def roll
      @number = rand(1..6)
      audit
      @number
    end
  end
end
