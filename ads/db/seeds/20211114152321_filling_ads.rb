Sequel.seed do
  def run
    [
      { title: 'Ttile 1', description: 'Description 1', city: 'City 1', user_id: 2 },
      { title: 'Ttile 2', description: 'Description 2', city: 'City 1', user_id: 2 },
      { title: 'Ttile 3', description: 'Description 3', city: 'City 1', user_id: 2 },
      { title: 'Ttile 4', description: 'Description 4', city: 'City 2', user_id: 3 },
      { title: 'Ttile 5', description: 'Description 5', city: 'City 2', user_id: 1 },
      { title: 'Ttile 6', description: 'Description 6', city: 'City 2', user_id: 2 },
      { title: 'Ttile 7', description: 'Description 7', city: 'City 1', user_id: 2 },
      { title: 'Ttile 8', description: 'Description 8', city: 'City 3', user_id: 2 },
      { title: 'Ttile 9', description: 'Description 9', city: 'City 1', user_id: 1 },
      { title: 'Ttile 0', description: 'Description 0', city: 'City 1', user_id: 2 }
    ].each do |attrs|
      Ad.create attrs
    end
  end
end