let upstream = https://github.com/dfinity/vessel-package-set/releases/download/mo-0.5.7-20210211/package-set.dhall sha256:43565631bf6b43639fcd0cae5cbb6b5d4f9bf5139e66ef600b8f7ded31821325
let Package =
    { name : Text, version : Text, repo : Text, dependencies : List Text }

let
  -- This is where you can add your own packages to the package-set
  additions =
    [] : List Package

let
  {- This is where you can override existing packages in the package-set

     For example, if you wanted to use version `v2.0.0` of the foo library:
     let overrides = [
         { name = "foo"
         , version = "v2.0.0"
         , repo = "https://github.com/bar/foo"
         , dependencies = [] : List Text
         }
     ]
  -}
  overrides =
    [] : List Package

in  upstream # additions # overrides
