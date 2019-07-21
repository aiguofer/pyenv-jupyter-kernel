#!/usr/bin/env bash

if declare -Ff after_virtualenv >/dev/null; then
  after_virtualenv 'pyenv register-kernel ${VIRTUALENV_NAME##*/}'
else
  echo "pyenv: pyenv-jupyter-kernel plugin requires pyenv-virtualenv v20130527 or later" >&2
fi
