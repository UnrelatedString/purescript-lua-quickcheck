let pslua-upstream =
      https://github.com/Unisay/purescript-lua-package-sets/releases/download/psc-0.15.15-20240829/packages.dhall
        sha256:02f528496825bbdd181c03b7f3907c75be4ff1644894f71ec1587c9e46b74ef3

let agnostic-upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.15-20250311/packages.dhall
        sha256:a5f3cbdf8fe4785c18303875b4d74bbdbcdb334332f92ee0e7db4c8af8524286

in  { packages = agnostic-upstream // pslua-upstream
    , compiler = Text/replace "v" "" agnostic-upstream.metadata.version
    , version = "0.0.1"
    }
