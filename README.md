To Install
==========

You will need to download the following (assuming you have a unix environment)
- `xsltproc`
- PhantomJS
- PrinceXML

You will also need the following repositories:
- https://github.com/philschatz/oer.epubcss
- https://github.com/Connexions/rhaptos.cnxmlutils/tree/cnxml2html (note the cnxml2html branch)

Also, you'll need to download the following files and toss them in the `./lib/` directory:
- `d3.js` (from d3js.org)
- `jquery-latest.js`
- `mathjax/` (should have a `MathJax.js` inside the dir when you're done)
- `Tangle` (just a checkout from https://github.com/worrydream/Tangle )

This repo comes with an example CNXML file with all the interactive stuff in it (It's 100% valid CNXML).

To generate some HTML and a PDF with static versions of the interactive content see the included `run.sh` file.

After running it you should have a `output.html` that you can open in your browser and a `output.pdf`.


I'm Too Lazy to Jump Through Those Hoops!
==========================================

Check out http://philschatz.github.com/oer.interactive for links to the autogenerated HTML and PDF files.