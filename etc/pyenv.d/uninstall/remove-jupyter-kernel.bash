#!/usr/bin/env bash
env_name=$1

check_python_package_installed() {
    local package=$1
    PYENV_VERSION=$env_name pyenv exec pip list --disable-pip-version-check | grep -F "$package" > /dev/null
    if [ $? -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

if declare -Ff before_uninstall >/dev/null; then
    if check_python_package_installed "jupyter"; then
        jupyter_data_dir=$(PYENV_VERSION=$env_name pyenv exec jupyter --data-dir)
        before_uninstall 'rm -rf ${jupyter_data_dir}/kernels/pyenv_${env_name}'
    fi
else
    echo "pyenv: pyenv-jupyter-kernel plugin requires pyenv v0.1.0 or later" >&2
fi
