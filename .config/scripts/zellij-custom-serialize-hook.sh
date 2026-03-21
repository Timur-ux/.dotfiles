read cmd
cmd="$(echo "$cmd" | sed 's/^sudo\s\+//')"

if [[ ! -z "$(echo "$cmd" | awk '{print $1}' | rg 'bin/nvim')" ]]; then
	path="$(echo "$cmd" | awk '{print $NF}')"
	if [[ ! -z "$(echo "$path" | rg 'vim.g')" ]]; then
		path=""
	fi
	echo "nvim $path"
	exit 0
fi

echo "$cmd"
