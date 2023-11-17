require 'rails_helper'

RSpec.describe "details/edit", type: :view do
  let(:detail) {
    Detail.create!(
      name: "MyString",
      amount: 1.5,
      user: nil,
      tran_group: nil
    )
  }

  before(:each) do
    assign(:detail, detail)
  end

  it "renders the edit detail form" do
    render

    assert_select "form[action=?][method=?]", detail_path(detail), "post" do

      assert_select "input[name=?]", "detail[name]"

      assert_select "input[name=?]", "detail[amount]"

      assert_select "input[name=?]", "detail[user_id]"

      assert_select "input[name=?]", "detail[tran_group_id]"
    end
  end
end
