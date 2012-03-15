all:	html public

html:	tracker.org
	emacs tracker.org -nw -f org-export-as-html -f kill-emacs

public: tracker.html
	cp tracker.html ~/public_html/time_tracker/

.PHONY: public
