require 'liam_api/version'
require 'spec_helper'
require 'unirest'

module LiamApi
  class Park

    attr_accessor :score, :park, :psa

    def initialize(hash)
      @score = hash["score"]
      @park = hash["park"]
      @psa = hash["psa"]
    end

    def self.all
      parks_array = Unirest.get("https://data.sfgov.org/resource/c86s-zvb2.json").body
    end

  end
end
