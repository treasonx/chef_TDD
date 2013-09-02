class TestMOTD < MiniTest::Chef::Spec
  describe_recipe 'motd:creates file' do
    assert_file '/etc/motd.tail', 'root', 'root', '0644'
  end
end

