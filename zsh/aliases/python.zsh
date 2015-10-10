alias django="python3 manage.py"
alias venv="virtualenv"
alias venva="source venv/bin/activate"
alias pipupdate="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
