opsview-vagrant-box
===================

This project builds a CEntos 7 VM with Opsview 6 installed using the automated installation
process explained here - https://knowledge.opsview.com/docs/automated-installation

This is a single VM setup with all Opsview services installed on the same node.

## Requirements

- Virtualbox
- Vagrant (To test)
- Packer

## Build

```bash
$ git clone <this-repo>
$ cd <this-repo-working-dir>
$ packer build packer.json

# Packer will do its magic and if everything works, a Vagrant box file will be created in
# `./build/` directory
```

### 
```bash

```
