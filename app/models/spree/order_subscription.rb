module Spree
  class OrderSubscription < Spree::Base

    self.table_name = "spree_orders_subscriptions"

    belongs_to :order, class_name: "Spree::Order"
    belongs_to :subscription, class_name: "Spree::Subscription"

    validates :order, :subscription, presence: true
    validates :order, uniqueness: { scope: :subscription }

  end
end
