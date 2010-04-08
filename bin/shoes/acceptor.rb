Shoes.app do
  resource_path = ARGV[1]
  assertion = ARGV[2].to_s.empty? ? "look right" : ARGV[2].to_s

  stack :margin => 10 do
    para "Does this image ", assertion, "?"
    flow do
      button("Yes") { puts "1"; exit }
      button("No") { puts "0"; exit }
    end
    image resource_path
    para code(resource_path)
  end
end