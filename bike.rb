#!/usr/bin/env ruby


class Bike

  def initialize
    @broken = rand(2)
  end

  def is_broken?
    @broken == 1
  end
end

