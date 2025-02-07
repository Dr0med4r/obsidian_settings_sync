# derivation.nix

{ lib, python3Packages }:
with python3Packages;
buildPythonApplication {
  pname = "demo-flask-vuejs-rest";
  version = "1.0";

  propagatedBuildInputs = [ flask ];

  src = ./.;
}

{ lib, python3Packages }:
with python3Packages;
buildPythonApplication rec {
  pname = "obsidiansettingssync";
  version = "1.2.5";
  pyproject = true;

  src = ./src;

  nativeBuildInputs = [
    setuptools
    wheel
    # added Packages
    # json
    #  os
    #  argparse
    #  copy
    #  subprocess
  ];

  propagatedBuildInputs = [
    python-daemon
  ];

  meta = with lib; {
    # ...
  };
}
