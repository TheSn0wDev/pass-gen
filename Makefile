all:
	@ cp src/main.lua pass-gen
	@ chmod +x pass-gen

fclean:
	@ $(RM) pass-gen