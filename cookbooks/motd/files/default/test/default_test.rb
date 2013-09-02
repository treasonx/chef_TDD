class MOTDSpec < MiniTest::Chef::Spec
  describe 'motd:creates file' do
    it 'should create tail file' do
      assert_file '/etc/motd.tail', 'root', 'root', '0644'
    end
  end
end

