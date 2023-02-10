require "rails_helper"

RSpec.describe ShopServices::CreateShop do
  subject(:shop) { described_class.call(params) }

  describe ".call" do
    context "when the shop is valid" do
      let(:params) { attributes_for(:shop).merge(account: create(:account)) }

      it "succeeds" do
        expect(shop).to be_success
      end
    end

    context "when the shop is invalid" do
      let(:params) { {} }

      it "fails" do
        expect(shop).to be_failure
      end
    end
  end
end
