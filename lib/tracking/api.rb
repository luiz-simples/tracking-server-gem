require "tracking/api/version"

module TrackingApi
  class TrackingService
    include HTTParty
    base_uri 'tracking-server.herokuapp.com'

    def initialize(hid)
      @hid = hid
    end

    def contacts
      self.class.get "/contacts", { query: { hid: @hid } }
    end

    def activities(cid)
      self.class.get "/activities", { query: { hid: @hid, cid: cid } }
    end
  end
end
