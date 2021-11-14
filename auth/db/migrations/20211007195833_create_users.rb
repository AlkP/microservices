Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id, :type=>:Bignum

      String :name, :null=>false
      String :email, :text=>true, :null=>false
      String :password_digest, :null=>false
      DateTime :created_at, :size=>6, :null=>false
      DateTime :updated_at, :size=>6, :null=>false

      index [:email], :name=>:index_user_on_email, unique: true
    end
  end
end