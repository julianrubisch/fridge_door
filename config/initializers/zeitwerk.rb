Rails.autoloaders.each do |autoloader|
  autoloader.ignore(Rails.root.join("lib/generators"))
end
