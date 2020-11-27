#Labbesne Docs

for now I'm just going to add some points I don't want to forget, I'll organize them later

###You might encounter an error migrating your db on production, comment out the spree roles in the spree initializer before migrating the first time to get it working

###- config/initializers/spree.rb has 3 added points:

pree::Role.find_or_create_by(name: 'merchant')
Spree::Role.find_or_create_by(name: 'data')
Spree::Role.find_or_create_by(name: 'stylist')

to add the extra roles

Spree::Event.subscribe 'order_finalized' do |event|
  order = event.payload[:order]
  order.line_items.each do |item|
    task = Task.new(spree_products_id: item.variant.product.id, notified: false, sent: false, recieved: false)
    task.save!
  end
end
