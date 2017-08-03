# CloudStackProjectsNContributions
Cloud Stack related projects and contributions from LANL

The modules collected in this repository should all be in the state where they work together to create and manage cloud resources.

## ClockworkVMs
A PyQt application that will run (if the right libraries are installed) packer to create VMware, Virtualbox or Parallels virtual machines.  Future targets will be QEMU, VSphere, Amazon AWS, Azure, Google Cloud, and Openstack.

## CloudTemplates
Cloud templates to work with ClockworkVMs specifically, but will work with packer for automation purposes.

## Note:
Please use "git submodule update https://github.com/csd-dev-tools/CloudStackProjectsNContributions.git" and "git clone --recursive https://github.com/csd-dev-tools/CloudStackProjectsNContributions.git" to ensure you include everything.
