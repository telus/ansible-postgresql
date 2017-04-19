require 'spec_helper'

describe 'ansible-postresql::default' do

  describe package('postresql') do
    it { should be_installed.by('apt') }
  end

end
