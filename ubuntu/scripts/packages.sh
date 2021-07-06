DEV_PACKAGES="
build-essential
curl
emacs24-nox
htop
nmon
slurm
tcpdump
unzip
"

ESSENTIAL_PACKAGES="
ntp
nfs-common
"

if [[ $INSTALL_DEV_PACKAGES  =~ true || $INSTALL_DEV_PACKAGES =~ 1 ||
        $INSTALL_DEV_PACKAGES =~ yes ]]; then
  apt-get -y install $DEV_PACKAGES
fi

apt-get -y install $ESSENTIAL_PACKAGES

apt-get -y install software-properties-common

add-apt-repository -y ppa:iconnor/zoneminder-1.34
apt-get -y install zoneminder
systemctl enable zoneminder
