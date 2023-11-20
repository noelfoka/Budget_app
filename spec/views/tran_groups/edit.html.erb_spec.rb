require 'rails_helper'

RSpec.describe 'tran_groups/edit', type: :view do
  let(:tran_group) do
    TranGroup.create!(
      name: 'MyString',
      icon: 'MyString',
      user: nil
    )
  end

  before(:each) do
    assign(:tran_group, tran_group)
  end

  it 'renders the edit tran_group form' do
    render

    assert_select 'form[action=?][method=?]', tran_group_path(tran_group), 'post' do
      assert_select 'input[name=?]', 'tran_group[name]'

      assert_select 'input[name=?]', 'tran_group[icon]'

      assert_select 'input[name=?]', 'tran_group[user_id]'
    end
  end
end
