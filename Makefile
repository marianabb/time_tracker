all:	html_mac public_puh

linux:	html public

html:	tracker.org
	emacs tracker.org -nw -f org-export-as-html -f kill-emacs

html_mac:	tracker.org
	/Applications/Emacs.app/Contents/MacOS/Emacs tracker.org -nw -f org-export-as-html -f kill-emacs

public: tracker.html
	cp tracker.html ~/public_html/time_tracker/

public_puh: tracker.html
	scp tracker.html mariana@cb.uu.se:~/public_html/time_tracker/.

.PHONY: public
