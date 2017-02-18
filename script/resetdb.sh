#!/usr/bin/env bash
echo "Stop Apache Server"
sudo service httpd stop

rm -rf public/uploads/attachment
echo "db:drop.."
rake db:drop
echo "db:create.."
rake db:create
echo "db:migrate..."
rake db:migrate
echo "db:seed..."
rake db:seed

echo "Restart Apache Server"
sudo service httpd restart
