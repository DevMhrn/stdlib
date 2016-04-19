#!/usr/bin/env julia

import JSON

"""
    gen( x, filepath )

Generate fixture data and write to file.

# Arguments

* `x`: domain
* `name::AbstractString`: filepath of the output file

# Examples

``` julia
julia> x = linspace( -1000, 1000, 2001 );
julia> gen( x, \"./data.json\" );
```
"""
function gen( x, filepath )
	# TODO: generate fixtures


	# Write fixture data to file as JSON:
	data = Dict([
		("x", x),
		("expected", y)
	]);
	outfile = open( filepath, "w" );
	write( outfile, JSON.json(data) );
	close( outfile );
end

# Get the filename:
file = @__FILE__;

# Extract the directory in which this file resides:
dir = dirname( file );

# Generate fixture data:
# TODO: generate input data (`x`)
out = joinpath( dir, "{{filename}}" );
gen( x, out );
