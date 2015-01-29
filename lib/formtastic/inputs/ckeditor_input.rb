module Formtastic
  module Inputs
    class CkeditorInput < Formtastic::Inputs::TextInput

      def input_html_options
        options = super
        options[:class] =  'ckeditor ' + options[:class].to_s
        options
      end

    end
  end
end