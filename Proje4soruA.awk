BEGIN {
  FS=","  #elimdeki belgeyi , bazlı olarak ayırdım
}
NR>1{	#NR ile ilk satırı almadan işleme başladım
	a[$8]++; #8.sütundaki tarihleri bir dizi içinde tutarak arttırdım
	if (a[$8] > comV) #tarihi düzenli olarak 1,2,3,4,5... diye saydırdım 
	{ 
		comN=$8; #en çok tekar eden tarihi #8 den çekerek comN'ye attım
		comV=a[$8] #dizi içindeki sayımları, comV ye aktararak kıyas yaptım

	} 
}
END {print("En çok filmin vizyona girdiği tarih "comV" defa ile "comN)}
