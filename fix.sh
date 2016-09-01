!/bin/bash
apt-get -y remove apt --allow-remove-essential
BIT=`uname -m`
if [ ${BIT} == 'x86_64' ]; then
	wget -O libapt.deb "http://http.kali.org/pool/main/a/apt/libapt-pkg5.0_1.3~pre3_amd64.deb"
	dpkg -i libapt.deb
	wget -O apt.deb "http://http.kali.org/pool/main/a/apt/apt_1.3~pre3_amd64.deb"
	dpkg -i apt.deb
	wait
	apt-get clean
	apt-get update
else
  	wget -O libapt.deb "http://http.kali.org/pool/main/a/apt/libapt-pkg5.0_1.3~pre3_i386.deb"
	dpkg -i libapt.deb
	wget -O apt.deb "http://http.kali.org/pool/main/a/apt/apt_1.3~pre3_i386.deb"
	dpkg -i apt.deb
	wait
	apt-get clean
	apt-get update
fi
