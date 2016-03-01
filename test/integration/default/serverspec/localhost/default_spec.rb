require 'spec_helper'

describe 'ansible-postgresql::default' do

  describe package('postgresql-client') do
    it { should be_installed.by('apt') }
  end

  describe package('postgresql') do
    it { should be_installed.by('apt') }
  end
end
