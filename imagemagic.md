# Imagemagic commands

replace png white->transparent
```
convert figure.png -fuzz 4% -transparent white figure.png
```
png->jpg transparent->white
```
convert image.png -background white -flatten -alpha off image.jpg
```
