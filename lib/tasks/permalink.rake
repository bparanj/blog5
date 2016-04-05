desc 'Counter cache for project has many tasks'

task permalink: :environment do
  products = Product.all
  products.each do |product|
    product.permalink = ERB::Util.url_encode(product.name)
    product.save!
  end
end