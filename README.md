## Project Templates

Boiler plate projects setup and settings



#### Details

The idea here is to provide a script in the `master` branch that enables the creation of new projects setup with all the required boiler plate code

Current syntax for this (using PowerShell)
`$ Create-Project -ProjectName TestProject -ProjectLanguage cpp` 
or
`$ Create-Project -n TestProject -l cpp`

Each project boiler plate code is kept in a branch under the `proj` namespace, e.g. `proj/cpp`



#### License

This code is licensed under the MIT License