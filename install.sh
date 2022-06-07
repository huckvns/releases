#!/usr/bin/env bash

OS="$(uname -s)"
ARCH="$(arch)"
mkdir -p ~/HuckVns/answers
cd ~/HuckVns
declare LINK

case "$OS" in
Linux | *BSD)
	LINK="https://github.com/huckvns/releases/releases/download/v1.0.0/huckvns-linux-x64"
	;;
Darwin)
	case "$ARCH" in
	arm64)
		LINK="https://github.com/huckvns/releases/releases/download/v1.0.0/huckvns-macos-arm64"
		;;
	x86_64)
		LINK="https://github.com/huckvns/releases/releases/download/v1.0.0/huckvns-macos-x64"
		;;
	*) 
		LINK="https://github.com/huckvns/releases/releases/download/v1.0.0/huckvns-macos-x64"
		;;
	esac
	open ~/HuckVns
	;;
*)
	echo "OS $OS is not currently supported."
	;;
esac

curl -Lo huckvns $LINK
chmod +x huckvns

echo -e "Программу успішно завантажено \n"
echo "Додайте html файли з відповідями до папки $(realpath answers)"
echo "Після цього запустість программу"
