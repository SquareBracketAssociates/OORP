-----------------------------------------------------------------------------
Please read carefully the lulu cover FAQ.
http://www.lulu.com/en/help/index.php?fSymbol=book_covers_faq
-----------------------------------------------------------------------------
How to generate the cover PDF
[Lulu recommends you to use Photoshop to rasterize the PDF, but you can do it directly with OmniGraffle]
- open oorp-cover.graffle
- Be sure to update the version number of the cover!
- Check carefully the number of pages (total PDF pages, *not* the final page number)
- If the dimensions (# pages) change, you will have to change the Page Setup of cover.graffle.  Right now it is 33.17cm x 23.50 cm for a 0.81cm spine (360 pages).
- File>Page Setup to adjust the canvas area to the size that Lulu wants
[Use cover.xls to calculate the spine size and total dimensions based on the page count; check if the numbers are the same as what Lulu asks.]
- Adjust the graffle images
- Be sure that the the cover art and spine text are properly centered. (Outline is in layer 1.)
- Export all objects as 300 dpi PNG
- Import the new PNG to the third layer
- Hide the fourth layer and position the png to be right under the second layer graphics
- Now hide all but the third layer
- Export the *current canvas* as a PDF -- now you have a rasterized PDF that you can upload
- Delete the PNG from the second layer (don't clutter the svn)
-----------------------------------------------------------------------------
Front-cover for web:
- copy oorp-cover.graffle
- delete version number
- export png at 72 dpi
- crop to size
- import into oorp-front-cover.graffle
- add shadow (10pt offset)
- export JPEG @ 30% 72dpi
-----------------------------------------------------------------------------
Lulu Notes
-----------------------------------------------------------------------------
How to embed fonts in a PDF
---------------------------
Lulu requires that all fonts be embedded.  Unfortunately not all fonts are embedded in the figures that were extracted from the original Framemaker-produced PDF.
To check which fonts are embedded, open a file with Acrobat and check the Font list under Document Properties (<ALT><CMD>F).
To embed the fonts, open with Preview, and print to PDF-X (not PDF).
Crop the resulting file, copy to OmniGraffle, and Export the current object as PDF.
Check again the font list with Acrobat and all should now be embedded.
In some cases you may not be able to embed fonts -- a workaround is to save the file as a 300 dpi png.
-----------------------------------------------------------------------------
- Title:
Object-Oriented Reengineering Patterns
- Authors:
Serge Demeyer
Stéphane Ducasse
Oscar Nierstrasz
- Format:
6"x9", Perfect-Bound, B&W (colour cover)
-----------------------------------------------------------------------------
- Category:
Computers & Internet
- Keywords:
Object-Oriented Programming, Reengineering, Patterns, Software Maintenance
- Description:
Object-Oriented Reengineering Patterns collects and distills successful techniques in planning a reengineering project, reverse-engineering, problem detection, migration strategies and software redesign.
This book is made available under the Creative Commons Attribution-ShareAlike 3.0 license. You can either download the PDF for free, or you can buy a softcover copy from lulu.com. Additional material is available from the book's web page at www.iam.unibe.ch/~scg/OORP/
- Publisher:
Square Bracket Associates
- ISBN:
978-3-9523341-2-6
- Copyright:
S. Demeyer, S. Ducasse, O. Nierstrasz
- Edition:
First Open-Source Edition
-----------------------------------------------------------------------------
- License Name:
Creative Commons Attribution-ShareAlike 3.0
- License URL:
http://creativecommons.org/licenses/by-sa/3.0/
-----------------------------------------------------------------------------
Price:
- book: 17.30 Euros
- PDF: 6.25 Euros
-----------------------------------------------------------------------------
