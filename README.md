Prerequisites

- Z3 
- ghc-8.2
- stack 

- Clone & Install Liquid Haskell on the `gradual` branch

	git clone --recursive https://github.com/ucsd-progsys/liquidhaskell.git
	cd liquidhaskell
	git checkout gradual
	git submodule update
	stack install # this might take a while

- Interact with the banchmarks from Intro & Section 6

	cd benchmarks/OOPSLA18/
	gradual 
	chrome .liquid/Indexing.hs.html	
	chrome .liquid/Indexing.hs.out.html

- Generage the table from Section 7	