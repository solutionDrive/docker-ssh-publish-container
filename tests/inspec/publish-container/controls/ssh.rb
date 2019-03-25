control 'ssh' do
    impact 1.0
    title 'verifies ssh exists'
    desc '
        In order to work with this container
        ssh and scp should be usable
    '

    describe command('ssh') do
        it { should exist }
    end

    describe command('scp') do
        it { should exist }
    end
end
