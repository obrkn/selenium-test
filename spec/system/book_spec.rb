# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Top LedgerCalendars', type: :system, js: true do
  let(:book) { create(:company) }

  it '正常に表示されること' do
    subject(:visit_page) { visit '/' }

    expect(response).to have_http_status '200'
  end
end
