@echo off &setlocal
rem config owner and key
set encryptedapikey=01000000d08c9ddf0115d1118c7a00c04fc297eb01000000f4e1945b57950e4183b2fdf4632e699b000000000200000000001066000000010000200000001518628178b1eeb7ad519ace44181bea888d31b831eca547f43732b33c4838ce000000000e8000000002000020000000f43d1e0b691c3cacb7d432a11399d45371148400c1c8f52a82fb82140f3948c7c0000000ac2770273c6f4c12797a7624bbc233ac7d79d5560d97d5dedc42445d0ed16910c1ef7067bc0aae21c3a5e23289d6ff6968a83b929a6d747de86ff8a0edc0065f6cc1f4e88e425d68f374536446fdd7c5d3f62e8f4b10b9edf36ae92bf4a17a8a0dd66ff102647be2ee7d9ed9019351c8baae1969f90498549aa17a098da31d15c475a5182ec46dc876303175c73eb4c0bf1d6e30e1cc5c143b10e170ae2c7ab66f9e2d0609798ddc3cf2d4ad8521b2f4033fa1ced05dfa6d86f5200e49e3020d40000000c5cc7bafa71ed7979ae52861c926ce064d9147c050d2f7d91cd4d2f7cc1e9909d11b7b7f04dd1a6c9d92790d323d61ffcb30aafa27d640d105c45afd966b53b2
set owner=KuroShinigami318

call Decrypt %encryptedapikey% apikey

set scripts_dir=%~dp0
pushd ..
python %scripts_dir%\getDeps.py %apikey% %owner% libs_dep.json libs
popd &endlocal