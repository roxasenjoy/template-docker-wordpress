FROM wordpress:latest

# Modifier les directives PHP
RUN echo "file_uploads = On\n" \
        "upload_max_filesize = 64M\n" \
        "post_max_size = 64M\n" \
        "max_execution_time = 600\n" \
        > /usr/local/etc/php/conf.d/uploads.ini
