sudo docker cp openeats_api_1:/code/site-media/ ~/OpenEatsBackup/site-media/
sudo docker exec openeats_db_1 /usr/bin/mysqldump -u root --password=heroism-teat-saw openeats > ~/OpenEatsBackup/backup.sql
