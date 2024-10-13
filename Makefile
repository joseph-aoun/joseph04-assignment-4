ifeq ($(OS),Windows_NT)
install:
	python -m venv venv
	venv\Scripts\activate && pip install -r requirements.txt

run:
	venv\Scripts\activate && flask run --host=0.0.0.0 --port=3000

else
install:
	python3 -m venv venv
	. venv/bin/activate && pip install -r requirements.txt

run:
	. venv/bin/activate && flask run --host=0.0.0.0 --port=3000
endif
