# url example: http://www.foto-webcam.eu/webcam/bruneck/2013/11/07/1000_hu.jpg

# create "photos" directory if it doesn't already exist
if test ! -d photos
then
	mkdir photos
fi
cd photos

# hours
for (( i=7; i<=23; i++ ))
do
	# base url
	url="http://www.foto-webcam.eu/webcam/bruneck/2013/10/29/"
	
	# minutes
	for (( j=0; j<=50; j=j+10 ))
	do
		
		# append hour
		if (($i<10))
			then url="${url}0$i"
		else 
			url="${url}$i"
		fi
		
		# append minutes
		if (($j<10))
			then url="${url}0$j"
		else
			url="${url}$j"
		fi
		
		# append file suffix
		url="${url}_hu.jpg"
		
		# download file
		wget $url
	done
done

exit 0
