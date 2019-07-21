#!/usr/bin/env bash

if declare -Ff after_uninstall >/dev/null; then
    after_uninstall 'rm -rf $(jupyter --data-dir)/kernels/${VERSION_NAME}'
else
    echo "pyenv: pyenv-jupyter-kernel plugin requires pyenv v0.1.0 or later" >&2
fi
