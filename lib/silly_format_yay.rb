require 'rspec/core/formatters/base_text_formatter'
require "silly_format_yay/version"

module RSpec
  module Formatters
    module SillyFormatYay
      class SillyFormatYay < RSpec::Core::Formatters::BaseTextFormatter

        Object::RSpec::Core::Formatters.register self, *[:example_passed, :example_failed]
          def example_passed(example)
            # if MacOS.version >= :lion
              output.print ([' 🍺 ',' 🙌 ', ' 😍 '].sample).colorize(:background => :green)
            # else
            #   output.print ([' YAY ', ' YAAASS ', ' NICE '].sample).colorize(:background => :green)
            # end
          end

          def example_failed(example)
            # if MacOS.version >= :lion
              output.print ([' 😨 ', ' 😵 ', ' 🙅 '].sample).colorize(:background => :red)
            # else
            #   output.print ([' NOOO ', ' LAME ', ' FFFUUUU '].sample).colorize(:background => :green)
            # end
          end

          def close(example)
            output.print (
            '_________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶________
            _______________¶¶¶___________________¶¶¶¶_____
            ____________¶¶¶_________________________¶¶¶¶___
            __________¶¶______________________________¶¶¶__
            ________¶¶¶_________________________________¶¶¶_
            _______¶¶_____________________________________¶¶¶
            ______¶¶_________¶¶¶¶¶___________¶¶¶¶¶_________¶¶
            ____¶¶__________¶¶¶¶¶¶__________¶¶¶¶¶¶_________¶¶
            ___¶¶___________¶¶¶¶____________¶¶¶¶___________¶¶
            ___¶¶___________________________________________¶¶
            __¶¶___________________________________________¶¶_
            _¶¶____________________¶¶¶¶____________________¶¶_
            _¶¶_______________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶______________¶¶__
            _¶¶____________¶¶¶¶___________¶¶¶¶¶___________¶¶___
            ¶¶¶_________¶¶¶__________________¶¶__________¶¶____
            ¶¶_________¶______________________¶¶________¶¶_____
            ¶¶¶______¶________________________¶¶_______¶¶______
            ¶¶¶_____¶_________________________¶¶_____¶¶________
            _¶¶¶___________________________________¶¶__________
            __¶¶¶________________________________¶¶____________
            ___¶¶¶____________________________¶¶_______________
            ____¶¶¶¶______________________¶¶¶__________________
            _______¶¶¶¶¶_____________¶¶¶¶¶_____________________
            ')
          end

      end
    end
  end
end
