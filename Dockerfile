# Use the official Ubuntu image
FROM ubuntu

# Update package lists and install Apache
RUN apt-get update -y && apt-get install -y apache2

# Expose port 80
EXPOSE 80

# Run Apache in the foreground
CMD ["apachectl", "-g", "FOREGROUND"]
