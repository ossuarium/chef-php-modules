require 'spec_helper'

describe 'php-modules::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
end
