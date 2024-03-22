{ pkgs, ... }:

{
  enterShell = ''
    ROCDIR="$(pwd)/$(find . -type d -iname 'roc_nightly*' | head -n 1)"
    # ROCDIR="$(pwd)/roc/target/release"
    # ROCDIR="$(pwd)/roc/target/debug"
    PATH=$ROCDIR:$PATH
  '';
}
