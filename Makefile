idc.txt: idc.xml
	xml2rfc idc.xml

idc.xml: idc.md
	mmark idc.md > idc.xml
