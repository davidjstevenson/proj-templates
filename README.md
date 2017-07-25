## Project Templates

Boiler plate projects setup and settings



#### Details

This provides a script to create new shell projects from the branches of another repo, github.com/davidjstevenson/proj-template-content.git. This is done by doing a shallow clone of the specific branch and turning the result local clone into a new repo.

Current syntax for this (using PowerShell)
`$ Create-Project -ProjectPath TestProject -ProjectLanguage cpp` 
or
`$ Create-Project -p TestProject -l cpp`



#### License

This code is licensed under the MIT License
