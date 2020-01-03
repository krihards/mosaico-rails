module Mosaico
  class LocalImageBackend < LocalBackend
    def initialize
      super(Rails.root.join('public/system/mosaico/images').to_s, '/system/mosaico/images')
    end
  end
end
