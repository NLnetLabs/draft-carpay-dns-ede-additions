VERSION = 01
I-D = draft-carpay-extra-ede-codes-dnssec-bogus
DOCNAME = $(I-D)-$(VERSION)

all: $(DOCNAME).html $(DOCNAME).txt

$(I-D).mkd: $(I-D).mkd.in
	sed 's/@DOCNAME@/$(DOCNAME)/g' $< >$@

$(DOCNAME).html: $(DOCNAME).xml
	xml2rfc --v3 --html $<

$(DOCNAME).txt: $(DOCNAME).xml
	xml2rfc --v3 --text $<

$(DOCNAME).xml: $(I-D).mkd
	kramdown-rfc2629 $< > $@

clean:
	rm -f $(DOCNAME).html $(DOCNAME).txt $(DOCNAME).xml $(DOCNAME).mkd
