Shoes.app do
  resource_path = ARGV[1]
  assertion = ARGV[2].to_s.empty? ? "look right" : ARGV[2].to_s

  keypress do |key|
    case key
    when "\n"
      pass
    when "\e"
      fail
    end
  end

  stack :margin => 10 do
    para "Does this image ", assertion, "?"
    flow do
      button("Yes") { pass }
      button("No") { fail }
    end
    image resource_path
    para code(resource_path)
  end
  
  def pass
    puts "1"
    exit
  end
  
  def fail
    puts "0"
    exit
  end
end