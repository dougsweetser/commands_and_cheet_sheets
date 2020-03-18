# Heroku - 5 free sites, more for $

Create a git repo. Required files:
* Proc file
* setup.sh
* requirements
* runtime.txt
* webapp__whatever.py

### Setup the files
```
ᐅ cat Procfile
web: sh setup.sh && streamlit run webapp__rotations_only.py
ᐅ cat setup.sh
# Based on tutorial: https://www.youtube.com/watch?v=skpiLtEN3yk
mkdir -p ~/.streamlit/

echo "\
[server]\n\
headless = true\n\
port = $PORT\n\
enableCORS = false\n\
\n\
" > ~/.streamlit/config.toml
ᐅ cat requirements.txt H -3
altair==4.0.1
astor==0.8.1
attrs==19.3.0
...  # created by: pip freeze | tee requirements.txt
ᐅ cat runtime.txt
python-3.7.6
```
### Deploy/update
```
ᐅ heroku login
ᐅ git push heroku master
```
