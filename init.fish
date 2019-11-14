# gvm initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies


set -q GVM_ROOT; or set -gx GVM_ROOT $HOME/.gvm
fenv source {$GVM_ROOT}/scripts/gvm >/dev/null ^&1
