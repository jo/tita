%.web.jpg: %.jpg
	convert "$<" -auto-orient -resize 800x1200 -strip -quality 86 "$@"
