
PROJECT = dojo-htmx

ACTIVATE = source $(HOME)/.venv/$(PROJECT)/bin/activate

all: install data/talk.html

run:
	$(ACTIVATE) && src/htmx/run.py

STRICT = --strict --warn-unreachable --ignore-missing-imports --no-namespace-packages

lint:
	$(ACTIVATE) && black . && isort . && ruff check
	$(ACTIVATE) && mypy $(STRICT) .

install: $(HOME)/.venv/dojo-htmx/bin/activate
	$(ACTIVATE) && pip install -r requirements.txt
	$(ACTIVATE) && pip install --upgrade pip

$(HOME)/.venv/dojo-htmx/bin/activate:
	python3 -m venv $(HOME)/.venv/$(PROJECT)

data/talk.html: ReadMe.md
	pandoc -t beamer -o $@ $<

clean:
	rm -rf src/htmx/htmx.db $(HOME)/.venv/dojo-htmx

.PHONY: all run lint install clean
