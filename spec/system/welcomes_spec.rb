require 'rails_helper'

RSpec.describe 'Welcome', type: :system do
  describe 'page' do
    context 'bbb' do
      it '' do
        visit root_url
        expect(page).to have_selector('h1', text: 'イベント一覧')
      end
    end
  end
end
