# pyenv-jupyter-kernel

Pyenv plugin to create a jupyter kernel for every installed pyenv version. Inspiration from [this gist](https://gist.github.com/thvitt/9072336288921f57ec8741eb4b8b024e)

## Installation

```shell
$ git clone https://github.com/aiguofer/pyenv-jupyter-kernel $(pyenv root)/plugins/pyenv-jupyter-kernel
```

## Usage

New kernels are automatically installed for every new version and virtualenv that you install. However, if you want to install the kernel for the current version (if using multiple versions, the top one) you can run:

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
