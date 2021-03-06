{ ocamlPackages, lib }:

with ocamlPackages;

buildDunePackage {
  pname = "tyxml-syntax";
  inherit (tyxml) src version;

  propagatedBuildInputs = [ ppx_tools_versioned uutf re ];

  meta = {
    description = "Common layer for the JSX and PPX syntaxes for Tyxml";
    license = lib.licenses.lgpl21;
  };
}
