pipcompile:
	echo "Compiling requirements"
	git status -s | grep requirements.in && python -m piptools compile --annotation-style line requirements.in || echo "No change requirements.in file"
	git status -s | grep requirements.dev.in && python -m piptools compile --annotation-style line requirements.dev.in || echo "No change requirements-dev.in file"