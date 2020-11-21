#Labbesne Docs

for now I'm just going to add some points I don't want to forget, I'll organize them later

###- `config/initializers/spree.rb` has 3 added points:

  ```
  pree::Role.find_or_create_by(name: 'merchant')
  Spree::Role.find_or_create_by(name: 'data')
  Spree::Role.find_or_create_by(name: 'stylist')

  ```

to add the extra roles

  ```
  Spree::Event.subscribe 'order_finalized' do |event|
    order = event.payload[:order]
    order.line_items.each do |item|
      task = Task.new(spree_products_id: item.variant.product.id, notified: false, sent: false, recieved: false)
      task.save!
    end
  end

  ```
creates a new Task associated with every product ordered once an Order is finalized

  ```
  config.menu_items << config.class::MenuItem.new(
    [:merchantOrder],
    'icon-name',
    url: 'https://solidus.io/admin/test'
  )
  end
  ```
adds a tab to admin dashboard that I'll use later

### `lib/spree/permission_sets`

has the permission sets for the new roles, the folder has to be included in `config/application.rb`
