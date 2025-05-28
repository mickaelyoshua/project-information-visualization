VENV_NAME = .env
VENV_BIN = $(VENV_NAME)/bin

# Create Python virtual environment
.PHONY: create_venv
create_venv:
	python3 -m venv $(VENV_NAME)

# Enter virtual environment
.PHONY: install_deps
install_deps: requirements.txt
	$(VENV_BIN)/pip install -r requirements.txt

# Clean up virtual environment
.PHONY: clean_venv
clean_venv:
	rm -rf $(VENV_NAME)