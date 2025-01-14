# Define variables
README_FILE=README.md
SCRIPT_FILE=guessinggame.sh

# Target to generate README.md
all: $(README_FILE)

$(README_FILE): $(SCRIPT_FILE)
	echo "# Guessing Game" > $(README_FILE)
	echo "" >> $(README_FILE)
	echo "This project is a simple Bash script that allows users to guess the number of files in the current directory." >> $(README_FILE)
	echo "" >> $(README_FILE)
	echo "## Details" >> $(README_FILE)
	echo "- Generated on: $$(date)" >> $(README_FILE)
	echo "- Number of lines in $(SCRIPT_FILE): $$(wc -l < $(SCRIPT_FILE))" >> $(README_FILE)

# Clean target to remove the README.md
clean:
	rm -f $(README_FILE)
