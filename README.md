Artifact for Gradual Liquid Types
----------------------------------

The artifacts of this paper are three

1. The soundness of the theory, 
2. the evaluation of the implementation on error reporting, and 
3. the evaluation of the implementation on program migration.


The soundness of our technique is provedin the Appendix of the paper `gradual-liquid-types.pdf`.
Below are the direction on how to install and evaluate the implementation.

## Installation 

### Prerequisites

Installation depends on  

   - [Z3](https://github.com/Z3Prover/z3/releases),  
	
   - [ghc](https://www.haskell.org/ghc/), and
  	
   - [stack](https://docs.haskellstack.org/en/stable/README/). 
   
Installation depends on `ghc-8.2` but stack will locally install this version.


### Clone & Install Liquid Haskell on the `gradual` branch

```
	git clone --recursive https://github.com/ucsd-progsys/liquidhaskell.git
	cd liquidhaskell
	git checkout gradual
	git submodule update
	stack setup   # this will locally install ghc-8.2 if your ghc version is different
	stack install # this might take a while
```


## Evaluation on Error Reporting 

Once `gradual` is installed in your path you can generate the interactive interface for the examples on section 1 and 6. 
The example of section 6 lives in `tests/Indexing.hs`. The below steps open the GUI on your browser. 

	# go to the root of the OOPSLA18-artifact directory
	cd tests
	gradual Indexing.hs
	
This command generates two `.html` files in the `tests/.liquid` directory. You can open these files with your browser, by using for example the `chrome` command

	chrome .liquid/Indexing.hs.html	
	chrome .liquid/Indexing.hs.out.html

You should expect the two generated files to be as in [Indexing.hs.html](http://goto.ucsd.edu/~nvazou/gradual/Indexing.hs.html) and [Indexing.hs.out.html](http://goto.ucsd.edu/~nvazou/gradual/Indexing.hs.out.html). See the paper on how to interact with these files. 

## Evaluation on Program Migration

To generate the table of Section 7 do

	cd tests
	sh runtests.sh
	
The output should be similar to `table.txt` and the command take about 5min. 
The four migration steps we follow for these benchmarks are outlined in `MigrationSteps.md`.
	
