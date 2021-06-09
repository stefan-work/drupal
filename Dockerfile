FROM debian
RUN apt-get -y update && apt install -y curl php php-curl php-gd php-mbstring php-sqlite3 php-xml php-dom
RUN mkdir drupal && cd drupal && curl -sSL https://www.drupal.org/download-latest/tar.gz | tar -xz --strip-components=1

WORKDIR /drupal
CMD php ./core/scripts/drupal quick-start demo_umami
