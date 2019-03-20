#NoEnv                   ;Recommended for performance and compatibility
#SingleInstance force    ;replaces the old instance automatically

#Hotstring EndChars #
#Hotstring ? O C


;========================================
; User Config
;========================================

filepath_lut		:= "lut.csv"
filepath_lut_rev	:= "lut_rev.csv"


;========================================
; Constant Data
;========================================

const_block_help =
(
Summary:
This AutoHotkey script inserts any UTF8 character into any textbox in any program without copy-and-pasting it from a charmap or online reference. Just tue the keyword (called "hotstring") and press '#' to replace it with it's assigned character. The assignments are stored in an additional csv file and can be modified to your liking.

Usage:
To insert any character, just type it and press '#' to trigger the replacement. The commands below are triggered in the same way.

Commands:
- #help
  opens basic help window
- #faq
  opens faq window. Look here if things don't work as expected
- #config
  opens the config csv file with the default program
- #reload
  reloads the config file and applies changes
)

const_block_faq = 
(
FAQ

Q: The script doesn't work! The inserted characters are wrong and/or saving always messes up the file!
A: If it does, your program may not use UTF8-BOM encoding for editing and/or saving the file. Please check whether your program has a setting for this or choose a better program.

Q: Why are some or all characters displayed as a box?
A: The box is a placeholder for a character not supported by the font you're using. On http://www.fileformat.info/info/unicode/font/index.htm you find a list of the most common fonts and the characters they support. For programmers I recommend "FreeMono", a monospace font similar to "Courier".

Q: Why are some characters formatted incorrectly, even though they are not missing?
A: Many fonts do not support "Combining Diacritical Marks" well, so most programs show a "best effort" representation. Try another font to fix this.

Q: Why does editing the csv lookup-table break certain characters?
A: Most table editors, including Microsoft Excel and OpenOffice Calc, do not handle csv files well. Those programs convert the csv data first into their internal format and later back into a csv file, leading to information loss. For the creation of this script "Rons CSV Editor" was used.

Q: The script replaced only part of a hotstring with a character I did not want! Ho do I get the correct character?
A: This script chooses the first suitable hotstring and replaces it with the respective character. For example the csv list may contain ""yellow", "yellowgreen" and "green in this order. If you type "yellowgreen" and confirm it with '#', "green" will match, because it was the first suitable match in that list. The priority in the csv file is left to right, bottom to top.

Q: Why are the hotstrings case sensitive? How can I change this behavior?
A: Often it is helpful to differentiate between upper and lowercase characters, especially if some hotstrings are designed to match the latex expression. To change this behavior remove the 'C' from the command "#Hotstring ? O C" at the top of the script.
)

const_block_example = 
(
EXAMPLES

Below you find a list of a few notable examples. For a full list of included characters please open the included look-up table `lut.csv `, which ypu can open with `#config#`.

- Greek Letters
  α, β, γ, ω, π (alpha, beta, gamma, omega, pi)
  Ω, Π (Omega, Pi)
  
- Superscript, Subscript, Fracctions
  ⁰, ¹, ², ... ⁹, ⁺, ⁻, ⁼ (sup0, sup1, sup2, sup9, sup+, sup-, sup=)
  ₀, ₁, ₂, ... ₉, ₊, ₋, ₌ (sub0, sub1, sub2, sub9, sub+, sub-, sub=)
  ½, ⅔, ¾, ⅚, ⅞ (1/2, 2/3, 3/4, 5/6, 7/8)
  ¹²³⁄₃₂₁ (sup1 sup2 sup3 frac sub3 sub2 sub1)
  
- Symbols
  ✓, ✔, ✗, ✘ (marky, Markn, markn, Markn)
  ☐, ☑, ☒ (box, boxy, boxn)
  
- Arrows (combinations limited by utf8)
  ←, →, ↔ (<-, ->, <->)
  ←, ↖, ↑, →, ↘, ↓ ↙ (->l, ->ul, ->u, ->ur, ->r, ->dr, ->d, ->dl)
  ↠, ↣, ↦, ⇥, ↝, ⇝, ⇒, ⤇ (->>, >->, |->, ->|, ~>, ~~>, =>, |=>)
  ⟶, ⟼, ⟹, ⟾, ⟿ (-->, |-->, ==>, |==>, ~~~>)
  
- Math
  f′, f″, f‴, f⁗ (', '', ''', '''')
  ¬, ∧, ∨, ⊼, ⊽, ⊻ (neg, and, or, nand, nor, xor)
  ⌀, ∠, ∡, ∢ (dia, ang, angm, angs)
  ∔, ∸, ±, ∓, ⋅, ∗, ⋆, ×, ∕, ÷, ⋇, o (+., -, +-, -+, *, **, ***, x, //, /:, /:x, o)
  √, ∛, ∜ (sqrt, sqrt3, sqrt4)
  ∫, ∬, ∭, ∮, ∯, ∰ (int, int2, int3, into, into2, into3)
  ℜ, ℑ, ℕ, ℤ, ℚ, ℝ, ℂ (Re, Im, NN, ZZ, QQ, RR, CC)
  ∑, ∏, ∐ (sum, prod, coprod)
  ≐, ≟, ≗, ≙, ≚, ≛, ≞, ≝ (=*, =?, =°, =^^, =v, =***, =m, =def)
  ≠, ≡, ≢, ≣ (!=, =_, !=_, =__)
  ≈, ≉, ≋, ≂, ≃, ≄, ≅, ≆, ≇, ≊ (~~, !~~, ~~~, _~, ~_, !~_, ~__, ~!__, !~__, ~~_)
  ⋖, ≮, ≪, ⋘, ≤, ≰, ≲, ⋦, ≴, ≦, ≨, ⪅, ⪉ (<., !<, <<, <<<, <_, !<_, <~, <!~, !<~, <__, <!__, <~~, <!~~)
  
- Combining (overlays the character before, might not always render correctly)
  ṙ, r̈, r̃, r̄, ŕ, r̀, r̆, ȓ, r̂, ř, r̊, r⃗ (r&a., r&a.., r&a~, r&a-, r&a´´, r&a\`\`, r&au, r&an, r&a^^, a&av, r&a°, r&a->)
  ṛ, r̤, r̰, ṟ, r̗, r̖, r̮, r̯, r̭, r̬, r̥, r⃯ (r&b., r&b.., r&b~, r&b-, r&b´´, r&b\`\`, r&bu, r&bn, r&b^^, b&bv, r&b°, r&b->)
  r̴, r̵, r̶, r⃒, r⃦, r̸, r⃫ (r&o~, r&o-, r&o_, r&o|, r&o||, r&o/, r&o//)
  r⃝, r⃞, r⃟, r⃠, r⃢, r⃣ (r&ec, r&es, r&ed, r&eb, r&ey, r&ek) [Note: shown incorrectly on github]
)

; formatting optimise to be view with the #license hotley
const_block_license =
(
The MIT License (MIT)

Copyright (c) 2019 nqtronix (github.com/nqtronix)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
)


;========================================
; Main Program
;========================================

;========================================
; Load file and reverse order of lines

; create working file and load it
FileDelete, filepath_lut_rev
file_lut     := FileOpen(filepath_lut, "r", "UTF-8")
file_lut_rev := FileOpen(filepath_lut_rev, "rw", "UTF-8")

; read header line
str_header := file_lut.ReadLine()

VarSetCapacity(str_lut_rev, file_lut.length) ; preallocate space for variable

; reverse the file content without header line
loop
{
	str_lut_rev := file_lut.ReadLine() . str_lut_rev
	;file_lut_rev.WriteLine(RegExReplace(file_lut.ReadLine(), "[\r\n]"))
}
until file_lut.AtEOF
file_lut.Close()

file_lut_rev.write(str_lut_rev)


;========================================
; Load hotstrings from file

; COLUNM iterate loop
loop, parse, str_header, CSV		; StringSplit does not support delimiter 'CSV'
{
	; go to start of file
	file_lut_rev.Pos := 1

	; first column does not contain hotstrings -> skip
	if (A_Index = 1)
		continue
		
	num_idx := A_Index
	;msgBox, %A_Index%
		
	; ROW iterate loop
	loop
	{
		; cache current line of csv table
		str_line := file_lut_rev.ReadLine()

		; set hotstrings
		str_field := []
		loop, parse, str_line, CSV		; StringSplit does not support delimiter 'CSV'
		{
			str_field.Push(A_LoopField)
		}
		
		str_hotstring := RegExReplace(str_field[num_idx], "[\r\n]")
		
		; hotstrings longer than 40 chars are not supported
		str_len := StrLen(str_hotstring)
		if (str_len > 40)
		{
			str_hotstring := SubStr(str_hotstring, str_len-39)
		}
		
		; ignore incomplete lines
		if (str_hotstring != "" and str_field[1] != "")
		{
			Hotstring("::" . str_hotstring, str_field[1], "On")
		}
	} until file_lut_rev.AtEOF
}
file_lut_rev.Close()
FileDelete, %filepath_lut_rev%	;cleanup


;========================================
; Special Commands
;========================================

:c0:#help::
	MsgBox %const_block_help%
return

:c0:#example::
	MsgBox %const_block_example%
return

:c0:#faq::
	MsgBox %const_block_faq%
return

:c0:#license::
	MsgBox %const_block_license%
return

:c0:#config::
	run, open %filepath_lut%
return

:c0:#reload::
	Reload
	Sleep 1000 ; Timeout
	MsgBox The script could not be reloaded. Please restart it again manually.
return







