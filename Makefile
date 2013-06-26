TITLE = University of Granada proposal for YAPC::EU 2014
pdf: bid-ugr.pdf

bid-ugr.pdf: bid-ugr.pod
	pod2pdf @pod2pdf.conf $< > $@

clean:
	rm -f bid-ugr.pdf
