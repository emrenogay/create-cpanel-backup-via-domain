#### How to use?
Create a file named domains.txt in the /home directory. Add 1 domain per line.

    cd /home && wget https://raw.githubusercontent.com/emrenogay/create-cpanel-backup-via-domain/main/script.sh
    chmod +x script.sh
    ./script.sh
    
### How to work?
Basically, using cPanel's "whoons" function, it retrieves the cPanel username of the domain and creates a backup for the website belonging to this username.
It can be a time saver for a large number of domains.
