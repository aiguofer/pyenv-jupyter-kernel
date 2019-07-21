#!/usr/bin/env bash

if declare -Ff after_install >/dev/null; then
  after_install 'pyenv register-kernel $VERSION_NAME'
else
  echo "pyenv: pyenv-jupyter-kernel plugin requires pyenv v0.1.0 or later" >&2
fi
