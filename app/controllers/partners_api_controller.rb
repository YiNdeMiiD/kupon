class PartnersApiController < ApplicationController

  def amitad_order
    Api::Amitad.new( params )
  end

  def some_other_partner
  end

end
