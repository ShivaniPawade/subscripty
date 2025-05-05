#!/bin/bash
echo "Post-deployment steps initiated..."

# Ensure the deployment directory exists
sudo mkdir -p /var/www/html

# Set correct permissions for web files
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Nginx to apply changes
sudo systemctl restart nginx

# Cleanup unnecessary temporary files (if needed)
rm -rf /var/www/html/temp_files

echo "PostScript execution completed successfully!"
