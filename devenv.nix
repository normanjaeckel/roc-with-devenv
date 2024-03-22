{ pkgs, ... }:

{
  packages = [
    pkgs.llvmPackages_9.libcxxClang
  ];

  enterShell = ''
    ROCDIR="$(pwd)/$(find . -type d -iname 'roc_nightly*' | head -n 1)"
    PATH=$ROCDIR:$PATH
  '';
}
