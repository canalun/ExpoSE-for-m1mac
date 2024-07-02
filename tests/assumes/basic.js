/* Copyright (c) Royal Holloway, University of London | Contact Blake Loring (blake@parsed.uk), Duncan Mitchell (Duncan.Mitchell.2015@rhul.ac.uk), or Johannes Kinder (johannes.kinder@rhul.ac.uk) for details or support | LICENSE.md for license details */

var S$ = require("S$");

var QR = S$.symbol("QR", false);
var QK = S$.symbol("QK", false);

S$.assume(QR === QK);
S$.assert(QR === QK);
