cookbook_file "/tmp/campsite_php.sql" do
    source "campsite_php.sql"
end

mysqladmin -uroot -pchangeme create campsite
execute "initialize mysql tables" do
    command "/usr/bin/mysql -uroot -pchangeme campsite  < /tmp/campsite_php.sql"
    action :run
end

