module YourApplication
  module Spree
    module ImageDecorator
      module ClassMethods
        def styles
          {
            mini:    '48x48>',
            small:   '100x100>',
            product: '250x250>',
            large:   '325x325>',
          }
        end
      end

      def self.prepended(base)
        base.singleton_class.prepend ClassMethods
      end
    end
  end
end

Spree::Image.prepend ::YourApplication::Spree::ImageDecorator
