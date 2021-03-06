require_relative "messages"

module MastermindSuzan
  class Color
    include Messages
    BEGINNER = %w(r g b y).freeze
    INTERMEDIATE = %w(r g b y w).freeze
    ADVANCED = %w(r g b y w p).freeze

    def set(level)
      case level
      when "b", "beginner" then beginner
      when "i", "intermediate" then intermediate
      when "a", "advanced" then advanced
      end
    end

    def beginner
      puts beginner_level_message
      random_sequence = []
      4.times do
        random_sequence << BEGINNER.sample
      end
      random_sequence
    end

    def intermediate
      puts intermediate_level_message
      random_sequence = []
      6.times do
        random_sequence << INTERMEDIATE.sample
      end
      random_sequence
    end

    def advanced
      puts advanced_level_message
      random_sequence = []
      8.times do
        random_sequence << ADVANCED.sample
      end
      random_sequence
    end
  end
end
