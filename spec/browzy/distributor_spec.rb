require 'spec_helper'

module Browzy

  describe Distributor do

    subject { Distributor }
    let(:html)         { '<head></head><body><h1>Test</h1></body>'}
    let(:browser_list) { [FactoryGirl.build(:chrome), FactoryGirl.build(:firefox)] }

    describe '.distribute' do
      it 'takes html and sends it to multiple browsers' do
        subject.distribute(html, browser_list)
      end
    end

  end
end