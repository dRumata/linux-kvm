#!/bin/bash
echo -n "Укажите свои имя и фамилию для отчета в виде imyafamilia: "
read familia
familia=${familia:=familia}
sudo virsh dominfo lab8alpine >>$familia.otchet.txt
sudo virsh domifaddr lab8alpine >>$familia.otchet.txt
sudo virsh snapshot-list lab8alpine  >>$familia.otchet.txt
sudo virsh pool-list --all >>$familia.otchet.txt
sudo virsh net-list --all >>$familia.otchet.txt
echo "Отправьте файл $familia.otchet.txt для отчета"
