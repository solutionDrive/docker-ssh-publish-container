control 'gpg' do
    impact 1.0
    title 'verifies gpg exists'
    desc '
        In order to work with this container
        gpg should be usable
    '

    describe command('gpg') do
        it { should exist }
    end
end
