<h1 align="center" style="font-weight: bold; margin-top: 20px; margin-bottom: 20px;">ahk-utf8-anywhere</h1>

<h3 align="center" style="font-weight: bold; margin-top: 20px; margin-bottom: 20px;">Turn keywords into utf8 characters anywhere you need to.</h3>

<p align="center">
	<a href="#changelog"><img src="https://img.shields.io/github/release-pre/nqtronix/ahk-utf8-anywhere.svg" alt="release: NA"></a>
    <a href="https://www.autohotkey.com/"><img src="https://img.shields.io/badge/language-ahk v1.1.30-blue.svg" alt="platform: windows"></a>
	<a href="#status"><img src="https://img.shields.io/badge/status-maintained-green.svg" alt="status: maintained"></a>
	<a href="https://github.com/nqtronix/ahk-utf8-anywhere/issues"><img src="https://img.shields.io/github/issues/nqtronix/ahk-utf8-anywhere.svg" alt="issues: NA"></a>
	<a href="#license"><img src="https://img.shields.io/github/license/nqtronix/ahk-utf8-anywhere.svg" alt="license: NA"></a>
</p>

<p align="center">
  <a href="#getting-started">Getting Started</a> •
  <a href="#examples">Examples</a> •
  <a href="#support">Need Help?</a> •
  <a href="#about">About</a> •
  <a href="#credits-and-references">Credits</a>
</p>

<br>

## Introduction
Adding special characters to a text document is usually a hassle and requires a character table or specialized tools like LaTeX. Many times it is not worth the effort and without the symbols text or equations look rough and are not well readable.

**ahk-utf8-anywhere** provides a shortcut to any character you need. Just type in the correcpondig keyword (also called hotstring) and convert it by pressing `#`. It's that easy!

<br>

## Key Features
 - **extensive:** 900+ characters are included
 - **intuitive:** multiple keywords per character, including pictographic, LaTeX and HTML
 - **fast:** auto-conversion as you type without any performance impact
 - **customisable:** add any character to the tool within seconds 
 - **anywhere:** works  in any program with a supported font

<br>

## Getting Started
You've never written a readme and want to do it _right_ straight from the start? Then just follow the steps below. If you run into problems, please [ask for clarification](#get-help).<br>

### Step 1: Download third-party software (optional)
 - [**AutoHotkey**][prog-ahk]<br>
   The tool is written with AutoHotkey, a powerful yet simple scripting program. To change the code you must install it, otherwise you can just run the .exe.
   
 - [**Rons CSV Editor**][rons-csv-editor]<br>
   The character assignments are stored in a simple csv file. To make modifications to them, yoou need a suitable editor which supports UTF8 encoding. I created the csv file with Rons CSV Editor and I highly recommend it. Notepad++ can be used as well, especially for minor edits. Excel and Calc do _not_ work and will break the file.

### Step 2: Download **ahk-utf8-anywhere**
 - **Copy this repository**<br>
   Clone it or hit [Download][git-download] and extract the .zip file.

### Step 3: Run it!
 - **Start typing**<br>
   Double click on the .exe (or the .ahk, if AutoHotkey is installed) and start typing! For example you can "draw" and arrow `=>` and convert it to ⇒ by pressing `#` afterwards. Alternatively you can use the hotstrings `\Rightarrow` (LaTeX), `&Rightarrow` (HTML) or `&rArr` (HTML). Use whatever is easiest for you to remember!

 - **Get Help**<br>
   Type `#help#` to open the help menu with additional information.
   
 - **Edit the character assignments**<br>
   Type `#config#` to open the .csv file with the default program. Edit the file, save it and type `#reload#` to update the script. You can also use this to see which characters are available.

<br>

## Examples
Below you find a list of a few notable examples. For a full list of included characters please open the included look-up table `lut.csv `, which ypu can open with `#config#`.

- **Greek Letters**<br>
  α, β, γ, ω, π (alpha, beta, gamma, omega, pi)<br>
  Ω, Π (Omega, Pi)
  
- **Superscript, Subscript, Fracctions**<br>
  ⁰, ¹, ², ... ⁹, ⁺, ⁻, ⁼ (sup0, sup1, sup2, sup9, sup+, sup-, sup=)<br>
  ₀, ₁, ₂, ... ₉, ₊, ₋, ₌ (sub0, sub1, sub2, sub9, sub+, sub-, sub=)<br>
  ½, ⅔, ¾, ⅚, ⅞ (1/2, 2/3, 3/4, 5/6, 7/8)<br>
  ¹²³⁄₃₂₁ (sup1 sup2 sup3 frac sub3 sub2 sub1)
  
- **Symbols**<br>
  ✓, ✔, ✗, ✘ (marky, Markn, markn, Markn)<br>
  ☐, ☑, ☒ (box, boxy, boxn)
  
- **Arrows** (combinations limited by utf8)<br>
  ←, →, ↔ (<-, ->, <->)<br>
  ←, ↖, ↑, →, ↘, ↓ ↙ (->l, ->ul, ->u, ->ur, ->r, ->dr, ->d, ->dl)<br>
  ↠, ↣, ↦, ⇥, ↝, ⇝, ⇒, ⤇ (->>, >->, |->, ->|, \~>, \~\~>, =>, |=>)<br>
  ⟶, ⟼, ⟹, ⟾, ⟿ (-->, |-->, ==>, |==>, \~\~\~>)
  
- **Math**<br>
  f′, f″, f‴, f⁗ (', '', ''', '''')<br>
  ¬, ∧, ∨, ⊼, ⊽, ⊻ (neg, and, or, nand, nor, xor)<br>
  ⌀, ∠, ∡, ∢ (dia, ang, angm, angs)<br>
  ∔, ∸, ±, ∓, ⋅, ∗, ⋆, ×, ∕, ÷, ⋇, o (+., -, +-, -+, \*, \*\*, \*\*\*, x, //, /:, /:x, o)<br>
  √, ∛, ∜ (sqrt, sqrt3, sqrt4)<br>
  ∫, ∬, ∭, ∮, ∯, ∰ (int, int2, int3, into, into2, into3)<br>
  ℜ, ℑ, ℕ, ℤ, ℚ, ℝ, ℂ (Re, Im, NN, ZZ, QQ, RR, CC)<br>
  ∑, ∏, ∐ (sum, prod, coprod)<br>
  ≐, ≟, ≗, ≙, ≚, ≛, ≞, ≝ (=\*, =?, =°, =^^, =v, =\*\*\*, =m, =def)<br>
  ≠, ≡, ≢, ≣ (!=, =\_, !=\_, =\_\_)<br>
  ≈, ≉, ≋, ≂, ≃, ≄, ≅, ≆, ≇, ≊ (\~\~, !\~\~, \~\~\~, \_\~, \~\_, !\~\_, \~\_\_, \~!\_\_, !\~\_\_, \~\~\_)<br>
  ⋖, ≮, ≪, ⋘, ≤, ≰, ≲, ⋦, ≴, ≦, ≨, ⪅, ⪉ (<., !<, <<, <<<, <\_, !<\_, <\~, <!\~, !<\~, <\_\_, <!\_\_, <\~\~, <!\~\~)
  
- **Combining** (overlays the character before, might not always render correctly)<br>
  ṙ, r̈, r̃, r̄, ŕ, r̀, r̆, ȓ, r̂, ř, r̊, r⃗ (r&a., r&a.., r&a~, r&a-, r&a´´, r&a\`\`, r&au, r&an, r&a^^, a&av, r&a°, r&a->)<br>
  ṛ, r̤, r̰, ṟ, r̗, r̖, r̮, r̯, r̭, r̬, r̥, r⃯ (r&b., r&b.., r&b~, r&b-, r&b´´, r&b\`\`, r&bu, r&bn, r&b^^, b&bv, r&b°, r&b->)<br>
  r̴, r̵, r̶, r⃒, r⃦, r̸, r⃫ (r&o\~, r&o-, r&o\_, r&o|, r&o||, r&o/, r&o//)<br>
  r⃝, r⃞, r⃟, r⃠, r⃢, r⃣ (r&ec, r&es, r&ed, r&eb, r&ey, r&ek) \[Note: shown incorrectly on github\]


<br>

## Support

### FAQ
This FAQ is also build-in to the script and can be accessed by typing `#faq#`.

- **Q: The script doesn't work! The inserted characters are wrong and/or saving always messes up the file!**<br>
A: If it does, your program may not use UTF8-BOM encoding for editing and/or saving the file. Please check whether your program has a setting for this or choose a better program.

- **Q: Why are some or all characters displayed as a box?**<br>
A: The box is a placeholder for a character not supported by the font you're using. On [fileformat.info] you find a list of the most common fonts and the characters they support. For programmers I recommend [_FreeMono_][freefont], a monospace font similar to _Courier_.

- **Q: Why are some characters formatted incorrectly, even though they are not missing?**<br>
A: Many fonts do not support "Combining Diacritical Marks" well, so most programs show a best effort representation. Try another font to fix this.

- **Q: Why does editing the csv lookup-table break certain characters?**<br>
A: Most table editors, including Microsoft Excel and OpenOffice Calc, do not handle csv files well. Those programs convert the csv data first into their internal format and later back into a csv file, leading to information loss. For the creation of this script [Rons CSV Editor][rons-csv-editor] was used.

- **Q: The script replaced only part of a hotstring with a character I did not want! Ho do I get the correct character?**<br>
A: This script chooses the first suitable hotstring and replaces it with the respective character. For example the csv list may contain ""yellow", "yellowgreen" and "green in this order. If you type "yellowgreen" and confirm it with '#', "green" will match, because it was the first suitable match in that list. The priority in the csv file is left to right, bottom to top.

- **Q: Why are the hotstrings case sensitive? How can I change this behavior?**<br>
A: Often it is helpful to differentiate between upper and lowercase characters, espcially if some hotstrings are designed to match the latex expression. To change this behavior remove the 'C' from the command "#Hotstring ? O C" at the top of the script (not recommended).
  
<br>

### Get Help

**Your question or problem wasn't solved in the FAQ?** No worries! Just open up a new issue in the [GitHub issue tracker][git-issues]. Please provide all information to reproduce your problem. If you don't have a GitHub account (and can't be bothered to create one,) you can [contact me](#contact) directly.

<br>

### Contribute

**Spotted an error?** [Open an issue][git-issues] or submit a pull request.

There is no CONTRIBUTING.md yet, sorry. Contributions will inherit the [license](#license) of this project. If you have any questions, just ask.

<br>

## About
### Status
**This project is currently classified as** <a href="https://github.com/nqtronix/git-template/blob/master/badges.md#project-status"><img src="https://img.shields.io/badge/status-maintained-green.svg" alt="status: maintained"></a><br>
_The developers intend to keep the code in working condition by updating dependencies, fixing bugs and solving issues._

I've been using a hardcoded version with a subset of the characters for a few years now and finally decided to update it to a cleaner version with a seperate look-up table. I consider the script feature complete, but it is likely that I'll add more characters or change hotstrings if it seems useful to me.

<br>

### Known Issues

 - none (that are reported)
 
<br>


### Changelog
This project uses [**Semantic Versioning 2.0.0**][semver.org]. During initial development (0.x.x versions) any _major_ increase is substituted with a _minor_ increase (0.1.0->0.2.0 instead of 0.1.0->1.0.0).

The message of each commit contains detailed information about the changes made. The list below is a summary about all significant improvements.

 - **0.1.0 (latest)**
   - initial release

<br>

### Contact

If you haven't done so already, please check out [Get Help](#get-help) for the fastest possible help on your issue. Alternatively you can find my public email address on my [profile][git-profile].

<br>

## Credits and References

### Projects Used
- **[git-template][git-repo-git-template]** - _A simple and clean git repository template._<br>

- **[markdownify][prog-markdownify]** - _A minimal markdown editor desktop app_<br>

- **[shields.io][shields.io]** - _badges as a service_ <br>

<br>

## License
This project is proudly licensed under the [MIT license][git-license].

The MIT license was chosen to give you the freedom to use this project in any way you want, while protecting all contributors from legal claims. Good code works, great code works for everyone. If this project has been useful to you, a link back to us would be highly appreciated. Thanks!


<!-- LINKS -->
<!-- in-line references: websites -->

[shields.io]:https://shields.io
[semver.org]:https://semver.org/

<!-- in-line references to github -->

[git-profile]:https://github.com/nqtronix
[git-download]:https://github.com/nqtronix/ahk-utf8-anywhere/archive/master.zip
[git-issues]:https://github.com/nqtronix/ahk-utf8-anywhere/issues
[git-readme]:README.md
[git-license]:LICENSE.md
[git-contribute]:CONTRIBUTING.md
[git-badges]:badges.md

[git-repo-git-template]:https://github.com/nqtronix/git-template

<!-- in-line references by tag -->

[prog-markdownify]:https://github.com/amitmerchant1990/electron-markdownify
[prog-ahk]: https://www.autohotkey.com/
[fileformat.info]:http://www.fileformat.info/info/unicode/font/index.htm
[freefont]:https://www.gnu.org/software/freefont/
[rons-csv-editor]:https://www.ronsplace.eu/products/ronseditor
