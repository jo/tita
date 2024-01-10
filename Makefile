all: orig/*
	for file in $^ ; do \
		$(MAKE) "web/`basename $${file}`"; \
	done

web/%: orig/%
	convert "$<" -auto-orient -resize 800x1200 -strip -quality 86 "$@"
