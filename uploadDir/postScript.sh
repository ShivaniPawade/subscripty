#!/bin/bash
echo "Post-deployment steps initiated..."

# Ensure the target directory exists
sudo mkdir -p /var/www/html

# Set correct permissions for web files
sudo chown -R www-data:www-data /var/www/html

# Restart the Nginx web server
sudo systemctl restart nginx

echo "PostScript execution completed successfully!"
