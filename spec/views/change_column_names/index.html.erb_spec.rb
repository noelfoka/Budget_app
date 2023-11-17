require 'rails_helper'

RSpec.describe "change_column_names/index", type: :view do
  before(:each) do
    assign(:change_column_names, [
      ChangeColumnName.create!(),
      ChangeColumnName.create!()
    ])
  end

  it "renders a list of change_column_names" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
