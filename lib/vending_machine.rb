class VendingMachine

  def initialize(contents)
    @contents = contents
  end

  def purchase
    puts 'please make a selection'
    user_selection = gets.chomp.to_sym 
    selection = @contents.map do |machine|
      machine[user_selection][:contents].map do |content|
        content[:type]
      end.flatten.pop
    end
    puts selection
  end

  def contents
    @contents.map do |slot|
      slot.map do |name, details|
        type = details[:contents].map do |detail|
          detail[:type]
        end.uniq.join
        puts "#{name}: #{type}"
      end
    end
  end

end