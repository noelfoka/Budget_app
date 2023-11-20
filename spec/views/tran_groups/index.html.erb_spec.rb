require 'rails_helper'

RSpec.describe 'tran_groups/index', type: :view do
  before(:each) do
    assign(:tran_groups, [
             TranGroup.create!(
               name: 'Name',
               icon: 'Icon',
               user: nil
             ),
             TranGroup.create!(
               name: 'Name',
               icon: 'Icon',
               user: nil
             )
           ])
  end

  it 'renders a list of tran_groups' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Icon'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
