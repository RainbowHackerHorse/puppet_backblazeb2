require 'spec_helper'
describe 'backblazeb2' do
  context 'with default values for all parameters' do
    it { should contain_class('backblazeb2') }
  end
end
