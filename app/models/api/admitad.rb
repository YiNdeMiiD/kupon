class Api::Admitad

  def initialize( params )
  	order_params = adopt( params )
  	Order.trigger order_params
  end

  def adopt( params )
    #adopting_params
    order_params
  end

end
