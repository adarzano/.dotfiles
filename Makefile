# Set the efault goal to be 'linux'
.DEFAULT_GOAL := linux

# Define variables for script file names and directories
LINUX_SCRIPT := ./bin/linux.sh
CLEANUP_SCRIPT := ./bin/cleanup.sh

# Define the 'linux' target
linux: $(LINUX_SCRIPT)
	@echo "Running linux setup script..."
	@chmod +x $(LINUX_SCRIPT)
	@$(LINUX_SCRIPT)

# Define the 'clean' target
clean:
	@echo "Running cleanup script..."
	@chmod +x $(CLEANUP_SCRIPT)
	@$(CLEANUP_SCRIPT)

# Make the 'clean' target a prerequisite for the 'linux' target
linux: clean
