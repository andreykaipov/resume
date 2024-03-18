{ pkgs
, ...
}:
{
  packages = with pkgs; [
    entr
    tectonic
  ];

  enterShell = '' '';

  pre-commit.hooks.shellcheck.enable = true;
}
