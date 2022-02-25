VERSION = 01
DOCNAME = draft-carpay-extra-ede-codes-dnssec-bogus-00
today := $(shell TZ=UTC date +%Y-%m-%dT00:00:00Z)

# all: $(DOCNAME)-$(VERSION).txt $(DOCNAME)-$(VERSION).html

# $(DOCNAME)-$(VERSION).txt: $(DOCNAME).xml
# 	xml2rfc --text -o $@ $<

# $(DOCNAME)-$(VERSION).html: $(DOCNAME).xml
# 	xml2rfc --html -o $@ $<

# $(DOCNAME).xml: $(DOCNAME).md
# 	sed -e 's/@DOCNAME@/$(DOCNAME)-$(VERSION)/g' \
# 	    -e 's/@TODAY@/${today}/g'  $< | mmark > $@ || rm -f $@

xml:
	kramdown-rfc2629 $(DOCNAME).md > $(DOCNAME).xml

rfc: $(DOCNAME).xml
	xml2rfc $(DOCNAME).xml

clean:
	rm -f $(DOCNAME).xml $(DOCNAME)-$(VERSION).txt $(DOCNAME)-$(VERSION).html