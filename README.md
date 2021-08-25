# jenkins

Docker image that takes the official Jenkins Docker image and...
* Fully updates the underlying Debian installation (apt-get dist-upgrade)
* Installs the following official Debian packages:
  * procps
  * lsb-release (needed in order to install the latest official Docker from docker.com)
  * jq (needed to parse JSon in Jenkinsfile scripts)
* The latest official Docker from docker.com

The image is automatically rebuilt (checked every 4 hours):
* Any time the upstream official Jenkins image is updated
* At least once per week
* Any time there is a check-in into this repo

If you like this you can buy me a coffee: https://www.buymeacoffee.com/letri
