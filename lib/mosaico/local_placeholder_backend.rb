module Mosaico
  class LocalPlaceholderBackend < LocalBackend
    def initialize
      super(Rails.root.join('public/system/mosaico/placeholders').to_s, '/system/mosaico/placeholders')
    end
  end
end
