# pyenv-jupyter-kernel

Pyenv plugin to create a jupyter kernel for installed pyenv version. Inspiration from [this gist](https://gist.github.com/thvitt/9072336288921f57ec8741eb4b8b024e)

## Installation

```shell
$ git clone https://github.com/aiguofer/pyenv-jupyter-kernel $(pyenv root)/plugins/pyenv-jupyter-kernel
```

## Usage

If you want to install the kernel for the current version (if using multiple versions, the top one) you run:

```shell
$ pyenv register-kernel
```

Or to specify a specific version:

```shell
$ pyenv register-kernel <version_name>
```

To create a kernel for all versions you've already created in pyenv:

```shell
pyenv versions --bare | grep -v "/" | xargs -L 1 pyenv register-kernel
```

To start up an interactive shell using the kernel for your currently active `pyenv` version:

```shell
jupyter console --kernel=$(pyenv version-name)
```

It might be useful to add an alias in your init file:

```shell
alias ipy="jupyter console --kernel=$(pyenv version-name)"
```
