require 'rails_helper'

RSpec.describe 'change_column_names/edit', type: :view do
  let(:change_column_name) do
    ChangeColumnName.create!
  end

  before(:each) do
    assign(:change_column_name, change_column_name)
  end

  it 'renders the edit change_column_name form' do
    render

    assert_select 'form[action=?][method=?]', change_column_name_path(change_column_name), 'post' do
    end
  end
end
