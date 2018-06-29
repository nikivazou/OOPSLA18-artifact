Migration Steps
----------------

**GOAL:** Verification of `{X}.hs`.

This library `X.hs` has refinement type errors either because functions are not total or there are violations of imported specifications. 


In this case study, the imported specifications are defined in `Imported.spec`.	

- **Initialization:** Import the specification file `Imported.spec` into the original library `{X}.hs` to generate the file `{X}Round{1}.hs`.

Start with `i=1` and repeat the following steps, until no errors are reported in the Step 1. 


- **Round i:** 

	- **Step 1:** 
	Run liquid on the whole file to check the generated errors.  

	liquid GHCListRound{i}.hs

	- **Step 2:** 
	For each function `f` that generates an error, generate a gradual type in the directory `Round{i}/*.hs`. The gradual type can refine either the function `f` itself or some library imported function that `f` is calling. 
	- **Step 3:** 
	If the gradual type refers to the function `f` itself, then run `gradual Round{i}/*.hs` for each file in `Round{i}` to solve the `??`.
	Add these types in the specification file `Round{i}.spec`, if they refine the function. 
	Otherwise, the gradual types were used for an imported function. In this case, one should go back to the libraries to check the types. For this study, we simply leave the `??` for the imported functions, taking advantage of gradual verification. 
	
	- **Step 4:** 		
	Include the solved specifications in `Round{i}.spec` to generate the version `{X}Round{i+1}.hs`. 

- **Finally:**
Copy `{X}Round{i+1}.hs` to the SAFE file `{X}RoundFinal.hs` so that you use it to verify all the libraries that import `X`.
