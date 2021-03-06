class ResistorColorDuo

  def self.value(colors)
    conversion = {
      'black' => 0,
      'brown' => 1,
      'red' => 2,
      'orange' => 3,
      'yellow' => 4,
      'green' => 5,
      'blue' => 6,
      'violet' => 7,
      'grey' => 8,
      'white' => 9
    }
    numbers = colors[0..1].map do |color|
      conversion[color]
    end
    numbers.join.to_i
  end

end
