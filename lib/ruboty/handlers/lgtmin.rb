require 'open-uri'
require 'nokogiri'

module Ruboty
  module Handlers
    class Lgtmin < Base
      on 'lgtm', name: 'lgtm', description: 'Fetch image url randomly from LGTM.in'

      LGTMIN_URL = 'https://www.lgtm.in'

      def lgtm(message)
        message.reply(fetch_image_url)
      end

      private

      def fetch_image_url
        doc = Nokogiri open(LGTMIN_URL + '/g')
        doc.css("#imageUrl").first['value']
      end
    end
  end
end
