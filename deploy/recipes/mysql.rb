cookbook_file "/tmp/campsite_php.sql" do
    source "campsite_php.sql"
end

execute "initialize mysql tables" do
    command "/usr/bin/mysql -uroot -pchangeme  < /tmp/campsite_php.sql"
    action :run
end

