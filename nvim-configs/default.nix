{ lib, ... }:
let
  # Function to recursively read all files in a directory
  readAllFiles =
    dir:
    let
      entries = builtins.attrNames (builtins.readDir dir);
      files = builtins.filter (entry: entry != "default.nix" && entry != "snippets") entries;
    in
    builtins.concatMap (
      entry:
      let
        path = "${dir}/${entry}";
      in
      if builtins.pathExists path && lib.pathIsDirectory path then readAllFiles path else [ path ]
    ) files;

in
{
  imports = readAllFiles ./.;
}
