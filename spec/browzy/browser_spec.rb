require 'spec_helper'

module Browzy
  describe Browser do

    it { should respond_to :name }
    it { should respond_to :version }
    it { should respond_to :platforms }

    its(:platforms) { should eq [] }

  end
end