Sequel.seed do
  def run
    [
      { email: 'one@ya.com', name: 'one', password: '1qazxsw2' },
      { email: 'two@ya.com', name: 'two', password: '1qazxsw2' },
      { email: 'three@ya.com', name: 'three', password: '1qazxsw2' }
    ].each do |attrs|
      User.create attrs
    end
  end
end