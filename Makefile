default:
	python2 convert.py > cyanide
	chmod +x cyanide

clean:
	rm -f *.pyc
