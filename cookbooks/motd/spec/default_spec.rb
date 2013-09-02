require 'chefspec'

describe 'motd::default' do
  chef_run = ChefSpec::ChefRunner.new do |node|
      node.set['company'] = 'swoop'
      node.set['pci'] = {
        'in_scope' => false
      }
  end
  chef_run.converge 'motd::default'
  it 'should create the motd file' do
    chef_run.node.set['company'] = 'swoop'
    expect(chef_run).to create_file_with_content('/etc/motd.tail', "This server is property of swoop")
  end
end
