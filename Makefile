
test::
	busted -p _spec.moon$

local: build
	luarocks make --local lapis-dev-1.rockspec

global: build
	luarocks make lapis-dev-1.rockspec

build::
	moonc lapis

watch:: build
	moonc -w lapis

