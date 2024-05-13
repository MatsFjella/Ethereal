function AddNewVariation(which, gender, one, two, single)
	local Where = Variations[which][gender]
	if not single then
		Where[one] = two
		Where[two] = one
	else
		Where[one] = two
	end
end

--[[
		This is where all the different variations go.
		For jackets i included extra things that arent just hoodies aswell, things like the christmas sweater with their different lights.
		So doing the command whilst wearing the christmas sweater you can toggle the light.

		Tip for adding new ones of this is to toggle Config.Debug, and use vMenu Player Appearance to switch around.

		If you are using EUP you might have to change things around!
		But it should be easy enough to understand and make changes as you want.

		Simply just : 

		AddNewVariation(Table, Gender, First, Second)

		And for Hair there is also the "single" var.
		Its important for haircuts.
]]--

Citizen.CreateThread(function()
	-- Male Visor/Hat Variations
	AddNewVariation("Visor", "Male", 9, 10)
	AddNewVariation("Visor", "Male", 18, 67)
	AddNewVariation("Visor", "Male", 82, 67)
	AddNewVariation("Visor", "Male", 44, 45)
	AddNewVariation("Visor", "Male", 50, 68)
	AddNewVariation("Visor", "Male", 51, 69)
	AddNewVariation("Visor", "Male", 52, 70)
	AddNewVariation("Visor", "Male", 53, 71)
	AddNewVariation("Visor", "Male", 62, 72)
	AddNewVariation("Visor", "Male", 65, 66)
	AddNewVariation("Visor", "Male", 73, 74)
	AddNewVariation("Visor", "Male", 76, 77)
	AddNewVariation("Visor", "Male", 79, 78)
	AddNewVariation("Visor", "Male", 80, 81)
	AddNewVariation("Visor", "Male", 91, 92)
	AddNewVariation("Visor", "Male", 104, 105)
	AddNewVariation("Visor", "Male", 109, 110)
	AddNewVariation("Visor", "Male", 116, 117)
	AddNewVariation("Visor", "Male", 118, 119)
	AddNewVariation("Visor", "Male", 123, 124)
	AddNewVariation("Visor", "Male", 125, 126)
	AddNewVariation("Visor", "Male", 127, 128)
	AddNewVariation("Visor", "Male", 130, 131)
	-- Female Visor/Hat Variations
	AddNewVariation("Visor", "Female", 43, 44)
	AddNewVariation("Visor", "Female", 49, 67)
	AddNewVariation("Visor", "Female", 64, 65)
	AddNewVariation("Visor", "Female", 65, 64)
	AddNewVariation("Visor", "Female", 51, 69)
	AddNewVariation("Visor", "Female", 50, 68)
	AddNewVariation("Visor", "Female", 52, 70)
	AddNewVariation("Visor", "Female", 62, 71)
	AddNewVariation("Visor", "Female", 72, 73)
	AddNewVariation("Visor", "Female", 75, 76)
	AddNewVariation("Visor", "Female", 78, 77)
	AddNewVariation("Visor", "Female", 79, 80)
	AddNewVariation("Visor", "Female", 18, 66)
	AddNewVariation("Visor", "Female", 66, 81)
	AddNewVariation("Visor", "Female", 81, 66)
	AddNewVariation("Visor", "Female", 86, 84)
	AddNewVariation("Visor", "Female", 90, 91)
	AddNewVariation("Visor", "Female", 103, 104)
	AddNewVariation("Visor", "Female", 108, 109)
	AddNewVariation("Visor", "Female", 115, 116)
	AddNewVariation("Visor", "Female", 117, 118)
	AddNewVariation("Visor", "Female", 122, 123)
	AddNewVariation("Visor", "Female", 124, 125)
	AddNewVariation("Visor", "Female", 126, 127)
	AddNewVariation("Visor", "Female", 129, 130)
	-- Male Bags
	AddNewVariation("Bags", "Male", 45, 44)
	AddNewVariation("Bags", "Male", 41, 40)
	-- Female Bags
	AddNewVariation("Bags", "Female", 45, 44)
	AddNewVariation("Bags", "Female", 41, 40)
	-- Male Hair
	AddNewVariation("Hair", "Male", 1, 1, true)
	AddNewVariation("Hair", "Male", 2, 1, true)
	AddNewVariation("Hair", "Male", 3, 1, true)
	AddNewVariation("Hair", "Male", 4, 1, true)
	AddNewVariation("Hair", "Male", 5, 1, true)
	AddNewVariation("Hair", "Male", 6, 1, true)
	AddNewVariation("Hair", "Male", 7, 1, true)
	AddNewVariation("Hair", "Male", 8, 1, true)
	AddNewVariation("Hair", "Male", 9, 1, true)
	AddNewVariation("Hair", "Male", 10, 1, true)
	AddNewVariation("Hair", "Male", 11, 1, true)
	AddNewVariation("Hair", "Male", 12, 1, true)
	AddNewVariation("Hair", "Male", 13, 1, true)
	AddNewVariation("Hair", "Male", 14, 1, true)
	AddNewVariation("Hair", "Male", 15, 1, true)
	AddNewVariation("Hair", "Male", 16, 1, true)
	AddNewVariation("Hair", "Male", 17, 1, true)
	AddNewVariation("Hair", "Male", 18, 1, true)
	AddNewVariation("Hair", "Male", 19, 1, true)
	AddNewVariation("Hair", "Male", 20, 1, true)
	AddNewVariation("Hair", "Male", 21, 1, true)
	AddNewVariation("Hair", "Male", 22, 1, true)
	AddNewVariation("Hair", "Male", 23, 1, true)
	AddNewVariation("Hair", "Male", 24, 1, true)
	AddNewVariation("Hair", "Male", 25, 1, true)
	AddNewVariation("Hair", "Male", 26, 1, true)
	AddNewVariation("Hair", "Male", 27, 1, true)
	AddNewVariation("Hair", "Male", 28, 1, true)
	AddNewVariation("Hair", "Male", 29, 1, true)
	AddNewVariation("Hair", "Male", 30, 1, true)
	AddNewVariation("Hair", "Male", 31, 1, true)
	AddNewVariation("Hair", "Male", 32, 1, true)
	AddNewVariation("Hair", "Male", 33, 1, true)
	AddNewVariation("Hair", "Male", 34, 1, true)
	AddNewVariation("Hair", "Male", 35, 1, true)
	AddNewVariation("Hair", "Male", 36, 1, true)
	AddNewVariation("Hair", "Male", 37, 1, true)
	AddNewVariation("Hair", "Male", 38, 1, true)
	AddNewVariation("Hair", "Male", 39, 1, true)
	AddNewVariation("Hair", "Male", 40, 1, true)
	AddNewVariation("Hair", "Male", 41, 1, true)
	AddNewVariation("Hair", "Male", 42, 1, true)
	AddNewVariation("Hair", "Male", 43, 1, true)
	AddNewVariation("Hair", "Male", 44, 1, true)
	AddNewVariation("Hair", "Male", 45, 1, true)
	AddNewVariation("Hair", "Male", 46, 1, true)
	AddNewVariation("Hair", "Male", 47, 1, true)
	AddNewVariation("Hair", "Male", 48, 1, true)
	AddNewVariation("Hair", "Male", 49, 1, true)
	AddNewVariation("Hair", "Male", 50, 1, true)
	AddNewVariation("Hair", "Male", 51, 1, true)
	AddNewVariation("Hair", "Male", 52, 1, true)
	AddNewVariation("Hair", "Male", 53, 1, true)
	AddNewVariation("Hair", "Male", 54, 1, true)
	AddNewVariation("Hair", "Male", 55, 1, true)
	AddNewVariation("Hair", "Male", 56, 1, true)
	AddNewVariation("Hair", "Male", 57, 1, true)
	AddNewVariation("Hair", "Male", 58, 1, true)
	AddNewVariation("Hair", "Male", 59, 1, true)
	AddNewVariation("Hair", "Male", 60, 1, true)
	AddNewVariation("Hair", "Male", 61, 1, true)
	AddNewVariation("Hair", "Male", 62, 1, true)
	AddNewVariation("Hair", "Male", 63, 1, true)
	AddNewVariation("Hair", "Male", 64, 1, true)
	AddNewVariation("Hair", "Male", 65, 1, true)
	AddNewVariation("Hair", "Male", 66, 1, true)
	AddNewVariation("Hair", "Male", 67, 1, true)
	AddNewVariation("Hair", "Male", 68, 1, true)
	AddNewVariation("Hair", "Male", 69, 1, true)
	AddNewVariation("Hair", "Male", 70, 1, true)
	AddNewVariation("Hair", "Male", 71, 1, true)
	AddNewVariation("Hair", "Male", 72, 1, true)
	AddNewVariation("Hair", "Male", 73, 1, true)
	AddNewVariation("Hair", "Male", 74, 1, true)
	AddNewVariation("Hair", "Male", 75, 1, true)
	AddNewVariation("Hair", "Male", 76, 1, true)
	AddNewVariation("Hair", "Male", 77, 1, true)
	AddNewVariation("Hair", "Male", 78, 1, true)
	AddNewVariation("Hair", "Male", 79, 1, true)
	AddNewVariation("Hair", "Male", 80, 1, true)
	AddNewVariation("Hair", "Male", 81, 1, true)
	AddNewVariation("Hair", "Male", 82, 1, true)
	AddNewVariation("Hair", "Male", 83, 1, true)
	AddNewVariation("Hair", "Male", 84, 1, true)
	AddNewVariation("Hair", "Male", 85, 1, true)
	AddNewVariation("Hair", "Male", 86, 1, true)
	AddNewVariation("Hair", "Male", 87, 1, true)
	AddNewVariation("Hair", "Male", 88, 1, true)
	AddNewVariation("Hair", "Male", 89, 1, true)
	AddNewVariation("Hair", "Male", 90, 1, true)
	AddNewVariation("Hair", "Male", 91, 1, true)
	AddNewVariation("Hair", "Male", 92, 1, true)
	AddNewVariation("Hair", "Male", 93, 1, true)
	AddNewVariation("Hair", "Male", 94, 1, true)
	AddNewVariation("Hair", "Male", 95, 1, true)
	AddNewVariation("Hair", "Male", 96, 1, true)
	AddNewVariation("Hair", "Male", 97, 1, true)
	AddNewVariation("Hair", "Male", 98, 1, true)
	AddNewVariation("Hair", "Male", 99, 1, true)
	AddNewVariation("Hair", "Male", 100, 1, true)
	AddNewVariation("Hair", "Male", 101, 1, true)
	AddNewVariation("Hair", "Male", 102, 1, true)
	AddNewVariation("Hair", "Male", 103, 1, true)
	AddNewVariation("Hair", "Male", 104, 1, true)
	AddNewVariation("Hair", "Male", 105, 1, true)
	AddNewVariation("Hair", "Male", 106, 1, true)
	AddNewVariation("Hair", "Male", 107, 1, true)
	AddNewVariation("Hair", "Male", 108, 1, true)
	AddNewVariation("Hair", "Male", 109, 1, true)
	AddNewVariation("Hair", "Male", 169, 200, true)
	AddNewVariation("Hair", "Male", 111, 1, true)
	AddNewVariation("Hair", "Male", 112, 1, true)
	AddNewVariation("Hair", "Male", 112, 1, true)
	AddNewVariation("Hair", "Male", 113, 1, true)
	AddNewVariation("Hair", "Male", 114, 1, true)
	AddNewVariation("Hair", "Male", 115, 1, true)
	AddNewVariation("Hair", "Male", 116, 1, true)
	AddNewVariation("Hair", "Male", 117, 1, true)
	AddNewVariation("Hair", "Male", 118, 1, true)
	AddNewVariation("Hair", "Male", 119, 1, true)
	AddNewVariation("Hair", "Male", 120, 1, true)
	AddNewVariation("Hair", "Male", 121, 1, true)
	AddNewVariation("Hair", "Male", 122, 1, true)
	AddNewVariation("Hair", "Male", 123, 1, true)
	AddNewVariation("Hair", "Male", 124, 1, true)
	AddNewVariation("Hair", "Male", 125, 1, true)
	AddNewVariation("Hair", "Male", 126, 1, true)
	AddNewVariation("Hair", "Male", 127, 1, true)
	AddNewVariation("Hair", "Male", 128, 1, true)
	AddNewVariation("Hair", "Male", 129, 1, true)
	AddNewVariation("Hair", "Male", 130, 1, true)
	AddNewVariation("Hair", "Male", 131, 1, true)
	AddNewVariation("Hair", "Male", 132, 1, true)
	AddNewVariation("Hair", "Male", 133, 1, true)
	AddNewVariation("Hair", "Male", 134, 1, true)
	AddNewVariation("Hair", "Male", 135, 1, true)
	AddNewVariation("Hair", "Male", 136, 1, true)
	AddNewVariation("Hair", "Male", 137, 1, true)
	AddNewVariation("Hair", "Male", 138, 1, true)
	AddNewVariation("Hair", "Male", 139, 1, true)
	AddNewVariation("Hair", "Male", 140, 1, true)
	AddNewVariation("Hair", "Male", 141, 1, true)
	AddNewVariation("Hair", "Male", 142, 1, true)
	AddNewVariation("Hair", "Male", 143, 1, true)
	AddNewVariation("Hair", "Male", 144, 1, true)
	AddNewVariation("Hair", "Male", 145, 1, true)
	AddNewVariation("Hair", "Male", 146, 1, true)
	AddNewVariation("Hair", "Male", 147, 1, true)
	AddNewVariation("Hair", "Male", 148, 1, true)
	AddNewVariation("Hair", "Male", 149, 1, true)
	AddNewVariation("Hair", "Male", 150, 1, true)
	AddNewVariation("Hair", "Male", 151, 1, true)
	AddNewVariation("Hair", "Male", 152, 1, true)
	AddNewVariation("Hair", "Male", 153, 1, true)
	AddNewVariation("Hair", "Male", 154, 1, true)
	AddNewVariation("Hair", "Male", 155, 1, true)
	AddNewVariation("Hair", "Male", 156, 1, true)
	AddNewVariation("Hair", "Male", 157, 1, true)
	AddNewVariation("Hair", "Male", 158, 1, true)
	AddNewVariation("Hair", "Male", 159, 1, true)
	AddNewVariation("Hair", "Male", 160, 1, true)
	AddNewVariation("Hair", "Male", 161, 1, true)
	AddNewVariation("Hair", "Male", 162, 1, true)
	AddNewVariation("Hair", "Male", 163, 1, true)
	AddNewVariation("Hair", "Male", 164, 1, true)
	AddNewVariation("Hair", "Male", 165, 1, true)
	AddNewVariation("Hair", "Male", 166, 1, true)
	AddNewVariation("Hair", "Male", 167, 1, true)
	AddNewVariation("Hair", "Male", 168, 1, true)
	AddNewVariation("Hair", "Male", 169, 1, true)
	AddNewVariation("Hair", "Male", 170, 1, true)
	AddNewVariation("Hair", "Male", 171, 1, true)
	AddNewVariation("Hair", "Male", 172, 1, true)
	AddNewVariation("Hair", "Male", 173, 1, true)
	AddNewVariation("Hair", "Male", 174, 1, true)
	AddNewVariation("Hair", "Male", 175, 1, true)
	AddNewVariation("Hair", "Male", 176, 1, true)
	AddNewVariation("Hair", "Male", 177, 1, true)
	AddNewVariation("Hair", "Male", 178, 1, true)
	AddNewVariation("Hair", "Male", 179, 1, true)
	AddNewVariation("Hair", "Male", 180, 1, true)
	AddNewVariation("Hair", "Male", 181, 1, true)
	AddNewVariation("Hair", "Male", 182, 1, true)
	AddNewVariation("Hair", "Male", 183, 1, true)
	AddNewVariation("Hair", "Male", 184, 1, true)
	AddNewVariation("Hair", "Male", 185, 1, true)
	AddNewVariation("Hair", "Male", 186, 1, true)
	AddNewVariation("Hair", "Male", 187, 1, true)
	AddNewVariation("Hair", "Male", 188, 1, true)
	AddNewVariation("Hair", "Male", 189, 1, true)
	AddNewVariation("Hair", "Male", 190, 1, true)
	AddNewVariation("Hair", "Male", 191, 1, true)
	AddNewVariation("Hair", "Male", 192, 1, true)
	AddNewVariation("Hair", "Male", 193, 1, true)
	AddNewVariation("Hair", "Male", 194, 1, true)
	AddNewVariation("Hair", "Male", 195, 1, true)
	AddNewVariation("Hair", "Male", 196, 1, true)
	AddNewVariation("Hair", "Male", 197, 1, true)
	AddNewVariation("Hair", "Male", 198, 1, true)
	AddNewVariation("Hair", "Male", 199, 1, true)
	AddNewVariation("Hair", "Male", 200, 1, true)
	AddNewVariation("Hair", "Male", 201, 1, true)
	AddNewVariation("Hair", "Male", 202, 1, true)
	AddNewVariation("Hair", "Male", 203, 1, true)
	AddNewVariation("Hair", "Male", 204, 1, true)
	AddNewVariation("Hair", "Male", 205, 1, true)
	AddNewVariation("Hair", "Male", 206, 1, true)
	AddNewVariation("Hair", "Male", 207, 1, true)
	AddNewVariation("Hair", "Male", 208, 1, true)
	AddNewVariation("Hair", "Male", 209, 1, true)
	AddNewVariation("Hair", "Male", 210, 1, true)
	AddNewVariation("Hair", "Male", 211, 1, true)
	AddNewVariation("Hair", "Male", 212, 1, true)
	AddNewVariation("Hair", "Male", 213, 1, true)
	AddNewVariation("Hair", "Male", 214, 1, true)
	AddNewVariation("Hair", "Male", 215, 1, true)
	AddNewVariation("Hair", "Male", 216, 1, true)
	AddNewVariation("Hair", "Male", 217, 1, true)
	AddNewVariation("Hair", "Male", 218, 1, true)



	-- Female Hair
	AddNewVariation("Hair", "Female", 1, 49, true)
	AddNewVariation("Hair", "Female", 2, 49, true)
	AddNewVariation("Hair", "Female", 3, 49, true)
	AddNewVariation("Hair", "Female", 4, 49, true)
	AddNewVariation("Hair", "Female", 5, 49, true)
	AddNewVariation("Hair", "Female", 6, 49, true)
	AddNewVariation("Hair", "Female", 7, 49, true)
	AddNewVariation("Hair", "Female", 8, 49, true)
	AddNewVariation("Hair", "Female", 9, 49, true)
	AddNewVariation("Hair", "Female", 10, 49, true)
	AddNewVariation("Hair", "Female", 11, 49, true)
	AddNewVariation("Hair", "Female", 12, 49, true)
	AddNewVariation("Hair", "Female", 13, 49, true)
	AddNewVariation("Hair", "Female", 14, 49, true)
	AddNewVariation("Hair", "Female", 15, 49, true)
	AddNewVariation("Hair", "Female", 16, 49, true)
	AddNewVariation("Hair", "Female", 17, 49, true)
	AddNewVariation("Hair", "Female", 18, 49, true)
	AddNewVariation("Hair", "Female", 19, 49, true)
	AddNewVariation("Hair", "Female", 20, 49, true)
	AddNewVariation("Hair", "Female", 21, 49, true)
	AddNewVariation("Hair", "Female", 22, 49, true)
	AddNewVariation("Hair", "Female", 23, 49, true)
	AddNewVariation("Hair", "Female", 24, 49, true)
	AddNewVariation("Hair", "Female", 25, 49, true)
	AddNewVariation("Hair", "Female", 26, 49, true)
	AddNewVariation("Hair", "Female", 27, 49, true)
	AddNewVariation("Hair", "Female", 28, 49, true)
	AddNewVariation("Hair", "Female", 29, 49, true)
	AddNewVariation("Hair", "Female", 30, 49, true)
	AddNewVariation("Hair", "Female", 31, 49, true)
	AddNewVariation("Hair", "Female", 32, 49, true)
	AddNewVariation("Hair", "Female", 33, 49, true)
	AddNewVariation("Hair", "Female", 34, 49, true)
	AddNewVariation("Hair", "Female", 35, 49, true)
	AddNewVariation("Hair", "Female", 36, 49, true)
	AddNewVariation("Hair", "Female", 37, 49, true)
	AddNewVariation("Hair", "Female", 38, 49, true)
	AddNewVariation("Hair", "Female", 39, 49, true)
	AddNewVariation("Hair", "Female", 40, 49, true)
	AddNewVariation("Hair", "Female", 41, 49, true)
	AddNewVariation("Hair", "Female", 42, 49, true)
	AddNewVariation("Hair", "Female", 43, 49, true)
	AddNewVariation("Hair", "Female", 44, 49, true)
	AddNewVariation("Hair", "Female", 45, 49, true)
	AddNewVariation("Hair", "Female", 46, 49, true)
	AddNewVariation("Hair", "Female", 47, 49, true)
	AddNewVariation("Hair", "Female", 48, 49, true)
	AddNewVariation("Hair", "Female", 49, 49, true)
	AddNewVariation("Hair", "Female", 50, 49, true)
	AddNewVariation("Hair", "Female", 51, 49, true)
	AddNewVariation("Hair", "Female", 52, 49, true)
	AddNewVariation("Hair", "Female", 53, 49, true)
	AddNewVariation("Hair", "Female", 54, 49, true)
	AddNewVariation("Hair", "Female", 55, 49, true)
	AddNewVariation("Hair", "Female", 56, 49, true)
	AddNewVariation("Hair", "Female", 57, 49, true)
	AddNewVariation("Hair", "Female", 58, 49, true)
	AddNewVariation("Hair", "Female", 59, 49, true)
	AddNewVariation("Hair", "Female", 60, 49, true)
	AddNewVariation("Hair", "Female", 61, 49, true)
	AddNewVariation("Hair", "Female", 62, 49, true)
	AddNewVariation("Hair", "Female", 63, 49, true)
	AddNewVariation("Hair", "Female", 64, 49, true)
	AddNewVariation("Hair", "Female", 65, 49, true)
	AddNewVariation("Hair", "Female", 66, 49, true)
	AddNewVariation("Hair", "Female", 67, 49, true)
	AddNewVariation("Hair", "Female", 68, 49, true)
	AddNewVariation("Hair", "Female", 69, 49, true)
	AddNewVariation("Hair", "Female", 70, 49, true)
	AddNewVariation("Hair", "Female", 71, 49, true)
	AddNewVariation("Hair", "Female", 72, 49, true)
	AddNewVariation("Hair", "Female", 73, 49, true)
	AddNewVariation("Hair", "Female", 74, 49, true)
	AddNewVariation("Hair", "Female", 75, 49, true)
	AddNewVariation("Hair", "Female", 76, 49, true)
	AddNewVariation("Hair", "Female", 77, 49, true)
	AddNewVariation("Hair", "Female", 78, 49, true)
	AddNewVariation("Hair", "Female", 79, 49, true)
	AddNewVariation("Hair", "Female", 80, 49, true)
	AddNewVariation("Hair", "Female", 81, 49, true)
	AddNewVariation("Hair", "Female", 82, 49, true)
	AddNewVariation("Hair", "Female", 83, 49, true)
	AddNewVariation("Hair", "Female", 84, 49, true)
	AddNewVariation("Hair", "Female", 85, 49, true)
	AddNewVariation("Hair", "Female", 86, 49, true)
	AddNewVariation("Hair", "Female", 87, 49, true)
	AddNewVariation("Hair", "Female", 88, 49, true)
	AddNewVariation("Hair", "Female", 89, 49, true)
	AddNewVariation("Hair", "Female", 90, 49, true)
	AddNewVariation("Hair", "Female", 91, 49, true)
	AddNewVariation("Hair", "Female", 92, 49, true)
	AddNewVariation("Hair", "Female", 93, 49, true)
	AddNewVariation("Hair", "Female", 94, 49, true)
	AddNewVariation("Hair", "Female", 95, 49, true)
	AddNewVariation("Hair", "Female", 96, 49, true)
	AddNewVariation("Hair", "Female", 97, 49, true)
	AddNewVariation("Hair", "Female", 98, 49, true)
	AddNewVariation("Hair", "Female", 99, 49, true)
	AddNewVariation("Hair", "Female", 100, 49, true)
	AddNewVariation("Hair", "Female", 101, 49, true)
	AddNewVariation("Hair", "Female", 102, 49, true)
	AddNewVariation("Hair", "Female", 103, 49, true)
	AddNewVariation("Hair", "Female", 104, 49, true)
	AddNewVariation("Hair", "Female", 105, 49, true)
	AddNewVariation("Hair", "Female", 106, 49, true)
	AddNewVariation("Hair", "Female", 107, 49, true)
	AddNewVariation("Hair", "Female", 108, 49, true)
	AddNewVariation("Hair", "Female", 109, 49, true)
	AddNewVariation("Hair", "Female", 110, 49, true)
	AddNewVariation("Hair", "Female", 110, 49, true)
	AddNewVariation("Hair", "Female", 111, 49, true)
	AddNewVariation("Hair", "Female", 112, 49, true)
	AddNewVariation("Hair", "Female", 113, 49, true)
	AddNewVariation("Hair", "Female", 114, 49, true)
	AddNewVariation("Hair", "Female", 115, 49, true)
	AddNewVariation("Hair", "Female", 116, 49, true)
	AddNewVariation("Hair", "Female", 117, 49, true)
	AddNewVariation("Hair", "Female", 118, 49, true)
	AddNewVariation("Hair", "Female", 119, 49, true)
	AddNewVariation("Hair", "Female", 120, 49, true)
	AddNewVariation("Hair", "Female", 121, 49, true)
	AddNewVariation("Hair", "Female", 122, 49, true)
	AddNewVariation("Hair", "Female", 123, 49, true)
	AddNewVariation("Hair", "Female", 124, 49, true)
	AddNewVariation("Hair", "Female", 125, 49, true)
	AddNewVariation("Hair", "Female", 126, 49, true)
	AddNewVariation("Hair", "Female", 127, 49, true)
	AddNewVariation("Hair", "Female", 128, 49, true)
	AddNewVariation("Hair", "Female", 129, 49, true)
	AddNewVariation("Hair", "Female", 130, 49, true)
	AddNewVariation("Hair", "Female", 131, 49, true)
	AddNewVariation("Hair", "Female", 132, 49, true)
	AddNewVariation("Hair", "Female", 133, 49, true)
	AddNewVariation("Hair", "Female", 134, 49, true)
	AddNewVariation("Hair", "Female", 135, 49, true)
	AddNewVariation("Hair", "Female", 136, 49, true)
	AddNewVariation("Hair", "Female", 137, 49, true)
	AddNewVariation("Hair", "Female", 138, 49, true)
	AddNewVariation("Hair", "Female", 139, 49, true)
	AddNewVariation("Hair", "Female", 140, 49, true)
	AddNewVariation("Hair", "Female", 141, 49, true)
	AddNewVariation("Hair", "Female", 142, 49, true)
	AddNewVariation("Hair", "Female", 143, 49, true)
	AddNewVariation("Hair", "Female", 144, 49, true)
	AddNewVariation("Hair", "Female", 145, 49, true)
	AddNewVariation("Hair", "Female", 146, 49, true)
	AddNewVariation("Hair", "Female", 147, 49, true)
	AddNewVariation("Hair", "Female", 148, 49, true)
	AddNewVariation("Hair", "Female", 149, 49, true)
	AddNewVariation("Hair", "Female", 150, 49, true)
	AddNewVariation("Hair", "Female", 151, 49, true)
	AddNewVariation("Hair", "Female", 152, 49, true)
	AddNewVariation("Hair", "Female", 153, 49, true)
	AddNewVariation("Hair", "Female", 154, 49, true)
	AddNewVariation("Hair", "Female", 155, 49, true)
	AddNewVariation("Hair", "Female", 156, 49, true)
	AddNewVariation("Hair", "Female", 157, 49, true)
	AddNewVariation("Hair", "Female", 158, 49, true)
	AddNewVariation("Hair", "Female", 159, 49, true)
	AddNewVariation("Hair", "Female", 160, 49, true)
	AddNewVariation("Hair", "Female", 161, 49, true)
	AddNewVariation("Hair", "Female", 162, 49, true)
	AddNewVariation("Hair", "Female", 163, 49, true)
	AddNewVariation("Hair", "Female", 164, 49, true)
	AddNewVariation("Hair", "Female", 165, 49, true)
	AddNewVariation("Hair", "Female", 166, 49, true)
	AddNewVariation("Hair", "Female", 167, 49, true)
	AddNewVariation("Hair", "Female", 168, 49, true)
	AddNewVariation("Hair", "Female", 169, 49, true)
	AddNewVariation("Hair", "Female", 170, 49, true)
	AddNewVariation("Hair", "Female", 171, 49, true)
	AddNewVariation("Hair", "Female", 172, 49, true)
	AddNewVariation("Hair", "Female", 173, 49, true)
	AddNewVariation("Hair", "Female", 174, 49, true)
	AddNewVariation("Hair", "Female", 175, 49, true)
	AddNewVariation("Hair", "Female", 176, 49, true)
	AddNewVariation("Hair", "Female", 177, 49, true)
	AddNewVariation("Hair", "Female", 178, 49, true)
	AddNewVariation("Hair", "Female", 179, 49, true)
	AddNewVariation("Hair", "Female", 180, 49, true)
	AddNewVariation("Hair", "Female", 181, 49, true)
	AddNewVariation("Hair", "Female", 182, 49, true)
	AddNewVariation("Hair", "Female", 183, 49, true)
	AddNewVariation("Hair", "Female", 184, 49, true)
	AddNewVariation("Hair", "Female", 185, 49, true)
	AddNewVariation("Hair", "Female", 186, 49, true)
	AddNewVariation("Hair", "Female", 187, 49, true)
	AddNewVariation("Hair", "Female", 188, 49, true)
	AddNewVariation("Hair", "Female", 189, 49, true)
	AddNewVariation("Hair", "Female", 190, 49, true)
	AddNewVariation("Hair", "Female", 191, 49, true)
	AddNewVariation("Hair", "Female", 192, 49, true)
	AddNewVariation("Hair", "Female", 193, 49, true)
	AddNewVariation("Hair", "Female", 194, 49, true)
	AddNewVariation("Hair", "Female", 195, 49, true)
	AddNewVariation("Hair", "Female", 196, 49, true)
	AddNewVariation("Hair", "Female", 197, 49, true)
	AddNewVariation("Hair", "Female", 198, 49, true)
	AddNewVariation("Hair", "Female", 199, 49, true)
	AddNewVariation("Hair", "Female", 200, 49, true)
	AddNewVariation("Hair", "Female", 201, 49, true)
	AddNewVariation("Hair", "Female", 202, 49, true)
	AddNewVariation("Hair", "Female", 203, 49, true)
	AddNewVariation("Hair", "Female", 204, 49, true)
	AddNewVariation("Hair", "Female", 205, 49, true)
	AddNewVariation("Hair", "Female", 206, 49, true)
	AddNewVariation("Hair", "Female", 207, 49, true)
	AddNewVariation("Hair", "Female", 208, 49, true)
	AddNewVariation("Hair", "Female", 209, 49, true)
	AddNewVariation("Hair", "Female", 210, 49, true)
	AddNewVariation("Hair", "Female", 211, 49, true)
	AddNewVariation("Hair", "Female", 212, 49, true)
	AddNewVariation("Hair", "Female", 213, 49, true)
	AddNewVariation("Hair", "Female", 214, 49, true)
	AddNewVariation("Hair", "Female", 215, 49, true)
	AddNewVariation("Hair", "Female", 216, 49, true)
	AddNewVariation("Hair", "Female", 217, 49, true)
	AddNewVariation("Hair", "Female", 218, 49, true)
	AddNewVariation("Hair", "Female", 219, 49, true)
	AddNewVariation("Hair", "Female", 220, 49, true)
	AddNewVariation("Hair", "Female", 221, 49, true)
	AddNewVariation("Hair", "Female", 222, 49, true)
	AddNewVariation("Hair", "Female", 223, 49, true)
	AddNewVariation("Hair", "Female", 224, 49, true)
	AddNewVariation("Hair", "Female", 225, 49, true)
	AddNewVariation("Hair", "Female", 226, 49, true)
	AddNewVariation("Hair", "Female", 227, 49, true)
	AddNewVariation("Hair", "Female", 228, 49, true)
	AddNewVariation("Hair", "Female", 229, 49, true)
	AddNewVariation("Hair", "Female", 230, 49, true)
	AddNewVariation("Hair", "Female", 231, 49, true)
	AddNewVariation("Hair", "Female", 232, 49, true)
	AddNewVariation("Hair", "Female", 233, 49, true)
	AddNewVariation("Hair", "Female", 234, 49, true)
	AddNewVariation("Hair", "Female", 235, 49, true)
	AddNewVariation("Hair", "Female", 236, 49, true)
	AddNewVariation("Hair", "Female", 237, 49, true)
	AddNewVariation("Hair", "Female", 238, 49, true)
	AddNewVariation("Hair", "Female", 239, 49, true)
	AddNewVariation("Hair", "Female", 240, 49, true)
	AddNewVariation("Hair", "Female", 241, 49, true)
	AddNewVariation("Hair", "Female", 242, 49, true)
	AddNewVariation("Hair", "Female", 243, 49, true)
	AddNewVariation("Hair", "Female", 244, 49, true)
	AddNewVariation("Hair", "Female", 245, 49, true)





	-- Male Top/Jacket Variations
	AddNewVariation("Jackets", "Male", 29, 30)
	AddNewVariation("Jackets", "Male", 31, 32)
	AddNewVariation("Jackets", "Male", 42, 43)
	AddNewVariation("Jackets", "Male", 68, 69)
	AddNewVariation("Jackets", "Male", 74, 75)
	AddNewVariation("Jackets", "Male", 87, 88)
	AddNewVariation("Jackets", "Male", 99, 100)
	AddNewVariation("Jackets", "Male", 101, 102)
	AddNewVariation("Jackets", "Male", 103, 104)
	AddNewVariation("Jackets", "Male", 126, 127)
	AddNewVariation("Jackets", "Male", 129, 130)
	AddNewVariation("Jackets", "Male", 184, 185)
	AddNewVariation("Jackets", "Male", 188, 189)
	AddNewVariation("Jackets", "Male", 194, 195)
	AddNewVariation("Jackets", "Male", 196, 197)
	AddNewVariation("Jackets", "Male", 198, 199)
	AddNewVariation("Jackets", "Male", 200, 203)
	AddNewVariation("Jackets", "Male", 202, 205)
	AddNewVariation("Jackets", "Male", 206, 207)
	AddNewVariation("Jackets", "Male", 210, 211)
	AddNewVariation("Jackets", "Male", 217, 218)
	AddNewVariation("Jackets", "Male", 229, 230)
	AddNewVariation("Jackets", "Male", 232, 233)
	AddNewVariation("Jackets", "Male", 251, 253)
	AddNewVariation("Jackets", "Male", 256, 261)
	AddNewVariation("Jackets", "Male", 262, 263)
	AddNewVariation("Jackets", "Male", 265, 266)
	AddNewVariation("Jackets", "Male", 267, 268)
	AddNewVariation("Jackets", "Male", 279, 280)
	-- Female Top/Jacket Variations
	AddNewVariation("Jackets", "Female", 53, 52) 
	AddNewVariation("Jackets", "Female", 57, 58) 
	AddNewVariation("Jackets", "Female", 62, 63) 
	AddNewVariation("Jackets", "Female", 90, 91) 
	AddNewVariation("Jackets", "Female", 92, 93) 
	AddNewVariation("Jackets", "Female", 94, 95) 
	AddNewVariation("Jackets", "Female", 187, 186)
	AddNewVariation("Jackets", "Female", 190, 191) 
	AddNewVariation("Jackets", "Female", 196, 197) 
	AddNewVariation("Jackets", "Female", 198, 199) 
	AddNewVariation("Jackets", "Female", 200, 201)
	AddNewVariation("Jackets", "Female", 202, 205) 
	AddNewVariation("Jackets", "Female", 204, 207) 
	AddNewVariation("Jackets", "Female", 210, 211)
	AddNewVariation("Jackets", "Female", 214, 215)
	AddNewVariation("Jackets", "Female", 227, 228) 
	AddNewVariation("Jackets", "Female", 239, 240) 
	AddNewVariation("Jackets", "Female", 242, 243) 
	AddNewVariation("Jackets", "Female", 259, 261)
	AddNewVariation("Jackets", "Female", 265, 270) 
	AddNewVariation("Jackets", "Female", 271, 272) 
	AddNewVariation("Jackets", "Female", 274, 275) 
	AddNewVariation("Jackets", "Female", 276, 277)
	AddNewVariation("Jackets", "Female", 292, 293) 
end)

-- And this is the master table, i put it down here since it has all the glove variations, and thats quite the eyesore.
-- You probably dont wanna touch anything down here really.
-- I generated these glove ones with a tool i made, im pretty certain its accurate, there might be native function for this.
-- If there is i wish i knew of it before i spent hours doing it this way.

Variations = {
	Jackets = {Male = {}, Female = {}},
	Hair = {Male = {}, Female = {}},
	Bags = {Male = {}, Female = {}},
	Visor = {Male = {}, Female = {}},
	Gloves = {
		Male = {
			[16] = 4,
			[17] = 4,
			[18] = 4,
			[19] = 0,
			[20] = 1,
			[21] = 2,
			[22] = 4,
			[23] = 5,
			[24] = 6,
			[25] = 8,
			[26] = 11,
			[27] = 12,
			[28] = 14,
			[29] = 15,
			[30] = 0,
			[31] = 1,
			[32] = 2,
			[33] = 4,
			[34] = 5,
			[35] = 6,
			[36] = 8,
			[37] = 11,
			[38] = 12,
			[39] = 14,
			[40] = 15,
			[41] = 0,
			[42] = 1,
			[43] = 2,
			[44] = 4,
			[45] = 5,
			[46] = 6,
			[47] = 8,
			[48] = 11,
			[49] = 12,
			[50] = 14,
			[51] = 15,
			[52] = 0,
			[53] = 1,
			[54] = 2,
			[55] = 4,
			[56] = 5,
			[57] = 6,
			[58] = 8,
			[59] = 11,
			[60] = 12,
			[61] = 14,
			[62] = 15,
			[63] = 0,
			[64] = 1,
			[65] = 2,
			[66] = 4,
			[67] = 5,
			[68] = 6,
			[69] = 8,
			[70] = 11,
			[71] = 12,
			[72] = 14,
			[73] = 15,
			[74] = 0,
			[75] = 1,
			[76] = 2,
			[77] = 4,
			[78] = 5,
			[79] = 6,
			[80] = 8,
			[81] = 11,
			[82] = 12,
			[83] = 14,
			[84] = 15,
			[85] = 0,
			[86] = 1,
			[87] = 2,
			[88] = 4,
			[89] = 5,
			[90] = 6,
			[91] = 8,
			[92] = 11,
			[93] = 12,
			[94] = 14,
			[95] = 15,
			[96] = 4,
			[97] = 4,
			[98] = 4,
			[99] = 0,
			[100] = 1,
			[101] = 2,
			[102] = 4,
			[103] = 5,
			[104] = 6,
			[105] = 8,
			[106] = 11,
			[107] = 12,
			[108] = 14,
			[109] = 15,
			[110] = 4,
			[111] = 4,
			[115] = 112,
			[116] = 112,
			[117] = 112,
			[118] = 112,
			[119] = 112,
			[120] = 112,
			[121] = 112,
			[122] = 113,
			[123] = 113,
			[124] = 113,
			[125] = 113,
			[126] = 113,
			[127] = 113,
			[128] = 113,
			[129] = 114,
			[130] = 114,
			[131] = 114,
			[132] = 114,
			[133] = 114,
			[134] = 114,
			[135] = 114,
			[136] = 15,
			[137] = 15,
			[138] = 0,
			[139] = 1,
			[140] = 2,
			[141] = 4,
			[142] = 5,
			[143] = 6,
			[144] = 8,
			[145] = 11,
			[146] = 12,
			[147] = 14,
			[148] = 112,
			[149] = 113,
			[150] = 114,
			[151] = 0,
			[152] = 1,
			[153] = 2,
			[154] = 4,
			[155] = 5,
			[156] = 6,
			[157] = 8,
			[158] = 11,
			[159] = 12,
			[160] = 14,
			[161] = 112,
			[162] = 113,
			[163] = 114,
			[165] = 4,
			[166] = 4,
			[167] = 4,
		},
		Female = {
			[16] = 11,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 0,
			[21] = 1,
			[22] = 2,
			[23] = 3,
			[24] = 4,
			[25] = 5,
			[26] = 6,
			[27] = 7,
			[28] = 9,
			[29] = 11,
			[30] = 12,
			[31] = 14,
			[32] = 15,
			[33] = 0,
			[34] = 1,
			[35] = 2,
			[36] = 3,
			[37] = 4,
			[38] = 5,
			[39] = 6,
			[40] = 7,
			[41] = 9,
			[42] = 11,
			[43] = 12,
			[44] = 14,
			[45] = 15,
			[46] = 0,
			[47] = 1,
			[48] = 2,
			[49] = 3,
			[50] = 4,
			[51] = 5,
			[52] = 6,
			[53] = 7,
			[54] = 9,
			[55] = 11,
			[56] = 12,
			[57] = 14,
			[58] = 15,
			[59] = 0,
			[60] = 1,
			[61] = 2,
			[62] = 3,
			[63] = 4,
			[64] = 5,
			[65] = 6,
			[66] = 7,
			[67] = 9,
			[68] = 11,
			[69] = 12,
			[70] = 14,
			[71] = 15,
			[72] = 0,
			[73] = 1,
			[74] = 2,
			[75] = 3,
			[76] = 4,
			[77] = 5,
			[78] = 6,
			[79] = 7,
			[80] = 9,
			[81] = 11,
			[82] = 12,
			[83] = 14,
			[84] = 15,
			[85] = 0,
			[86] = 1,
			[87] = 2,
			[88] = 3,
			[89] = 4,
			[90] = 5,
			[91] = 6,
			[92] = 7,
			[93] = 9,
			[94] = 11,
			[95] = 12,
			[96] = 14,
			[97] = 15,
			[98] = 0,
			[99] = 1,
			[100] = 2,
			[101] = 3,
			[102] = 4,
			[103] = 5,
			[104] = 6,
			[105] = 7,
			[106] = 9,
			[107] = 11,
			[108] = 12,
			[109] = 14,
			[110] = 15,
			[111] = 3,
			[112] = 3,
			[113] = 3,
			[114] = 0,
			[115] = 1,
			[116] = 2,
			[117] = 3,
			[118] = 4,
			[119] = 5,
			[120] = 6,
			[121] = 7,
			[122] = 9,
			[123] = 11,
			[124] = 12,
			[125] = 14,
			[126] = 15,
			[127] = 3,
			[128] = 3,
			[132] = 129,
			[133] = 129,
			[134] = 129,
			[135] = 129,
			[136] = 129,
			[137] = 129,
			[138] = 129,
			[139] = 130,
			[140] = 130,
			[141] = 130,
			[142] = 130,
			[143] = 130,
			[144] = 130,
			[145] = 130,
			[146] = 131,
			[147] = 131,
			[148] = 131,
			[149] = 131,
			[150] = 131,
			[151] = 131,
			[152] = 131,
			[154] = 153,
			[155] = 153,
			[156] = 153,
			[157] = 153,
			[158] = 153,
			[159] = 153,
			[160] = 153,
			[162] = 161,
			[163] = 161,
			[164] = 161,
			[165] = 161,
			[166] = 161,
			[167] = 161,
			[168] = 161,
			[169] = 15,
			[170] = 15,
			[171] = 0,
			[172] = 1,
			[173] = 2,
			[174] = 3,
			[175] = 4,
			[176] = 5,
			[177] = 6,
			[178] = 7,
			[179] = 9,
			[180] = 11,
			[181] = 12,
			[182] = 14,
			[183] = 129,
			[184] = 130,
			[185] = 131,
			[186] = 153,
			[187] = 0,
			[188] = 1,
			[189] = 2,
			[190] = 3,
			[191] = 4,
			[192] = 5,
			[193] = 6,
			[194] = 7,
			[195] = 9,
			[196] = 11,
			[197] = 12,
			[198] = 14,
			[199] = 129,
			[200] = 130,
			[201] = 131,
			[202] = 153,
			[203] = 161,
			[204] = 161,
			[206] = 3,
			[207] = 3,
			[208] = 3,
		}
	}
}