# Install Tools
yum install -y net-tools
yum install -y wget
yum install -y curl
yum install -y vim

# Pre-Req Install VirtualBox Guest Additions
yum install -y gcc
yum install -y perl
yum install -y "kernel-devel-uname-r == $(uname -r)"

# Install VirtualBox Guest Additions
wget http://download.virtualbox.org/virtualbox/6.1.12/VBoxGuestAdditions_6.1.12.iso --progress=bar:force
mkdir -p /tmp/media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_6.1.12.iso /tmp/media/VBoxGuestAdditions
sh /tmp/media/VBoxGuestAdditions/VBoxLinuxAdditions.run
echo Warmup_OK "¯\_(ツ)_/¯"
echo Warmup_OK "¯\_(ツ)_/¯"
echo Warmup_OK "¯\_(ツ)_/¯"
echo Warmup_OK "¯\_(ツ)_/¯"
echo Warmup_OK "¯\_(ツ)_/¯..."
#rm VBoxGuestAdditions_6.1.12.iso
#umount /tmp/media/VBoxGuestAdditions
#rmdir /tmp/media/VBoxGuestAdditions