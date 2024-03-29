Sequel.migration do
  change do
    create_table(:schema_migrations) do
      String :filename, :text=>true, :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:user_sessions, :ignore_index_errors=>true) do
      String :uuid, :null=>false
      Bignum :user_id, :null=>false
      DateTime :created_at, :size=>6, :null=>false
      DateTime :updated_at, :size=>6, :null=>false
      
      primary_key [:uuid]
      
      index [:user_id], :name=>:index_user_sessions_on_user_id
      index [:uuid], :name=>:index_user_sessions_on_uuid
    end
    
    create_table(:users, :ignore_index_errors=>true) do
      primary_key :id, :type=>:Bignum
      String :name, :text=>true, :null=>false
      String :email, :text=>true, :null=>false
      String :password_digest, :text=>true, :null=>false
      DateTime :created_at, :null=>false
      DateTime :updated_at, :null=>false
      
      index [:email], :name=>:index_user_on_email, :unique=>true
    end
  end
end
