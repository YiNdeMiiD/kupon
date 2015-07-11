class ShopCatalogController < ApplicationController

  def shops
    @shops = PartnerShop.all
  end

  def shop( id )
  	@shop = PartnerShop.find(id)
  end

  def shop_offers( shop_id )
    @offers = PartnerShop.find( shop_id ).offers
  end

  def offer( id )
    @offer = Offer.find( id )
  end

  def click( customer_id, offer_id )
    customer = Customer.find( customer_id )
    offer = Offer.find( offer_id )
    link_visit = LinkVisit.new( customer, offer )
    redirect_to link_visit.redirect_link
  end

end
