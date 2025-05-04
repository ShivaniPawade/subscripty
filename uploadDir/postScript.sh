#!/bin/bash
echo "Post-deployment steps initiated..."

# Change permissions for deployed files in Ubuntu
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart the web server (Nginx or Apache)
sudo systemctl restart nginx  # If using Nginx
# sudo systemctl restart apache2  # Uncomment if using Apache

# Cleanup unnecessary files (Modify based on your needs)
rm -rf /var/www/html/temp_files

echo "PostScript execution completed successfully!"
