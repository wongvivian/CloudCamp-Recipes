cookbook_file "/tmp/mydb-init.sql" do
    source "campsite_php.sql"
end

execute "initialize mysql tables" do
    command "/usr/bin/mysql -uroot -pchangeme cloudcamp}  < /tmp/mydb-init.sql"
    action :run
end

