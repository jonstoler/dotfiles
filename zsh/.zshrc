find -L $HOME/.zsh -maxdepth 1 -type f -name "*.zsh" | sort | while read file; do
	source $file
done

export PATH=/home/js/.local/bin:$PATH
