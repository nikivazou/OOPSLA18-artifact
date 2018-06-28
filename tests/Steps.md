**GOAL:** Verification of `{X}.hs`.

This library has errors because functions are not total or there are imported specifications that come from `Imported.spec`.	

Import the specification file `Imported.spec` into the original library `{X}.hs` to generate the file `{X}Round{1}.hs`.

Start with `i=1` and repeat the following steps, until no errors are reported in the Step 1. 


Round i: 
	Step 1: 
	Run liquid on the whole file to check the generated errors.  

	liquid GHCListRound{i}.hs

	Step 2: 
	For each function that generates an error, generate a gradual type in the directory `Round{i}/*.hs`.

	Step 3: 
	We run `gradual Round{i}/*.hs` for each file in `Round{i}` to solve the `??`.
	Add these types in the specification file `Round{i}.spec`

	Step 4: 		
	Include the solved specifications in `Round{i}.spec` to generate the version `{X}Round{i+1}.hs`. 

Copy `{X}Round{i+1}.hs` to the SAFE file `{X}RoundFinal.hs`.