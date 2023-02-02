class EbayAPI
  scope :sell do
    scope :account do
      scope :return_policy do
        # @see https://developer.ebay.com/api-docs/sell/account/resources/return_policy/methods/getReturnPolicy
        operation :get do
          option :id, proc(&:to_s)

          path { id }
          http_method :get
        end
      end
    end
  end
end
