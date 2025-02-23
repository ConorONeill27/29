# ALGOL 60

ALGOL 60 (short for Algorithmic Language 1960) is a member of the ALGOL family of computer programming languages. It followed on from ALGOL 58 which had introduced code blocks and the begin and end pairs for delimiting them, representing a key advance in the rise of structured programming. ALGOL 60 was one of the first languages implementing function definitions (that could be invoked recursively). ALGOL 60 function definitions could be nested within one another (which was first introduced by any programming language), with lexical scope. It gave rise to many other languages, including CPL, PL/I, Simula, BCPL, B, Pascal, and C. Practically every computer of the era had a systems programming language based on ALGOL 60 concepts.
Niklaus Wirth based his own ALGOL W on ALGOL 60 before moving to develop Pascal. Algol-W was intended to be the next generation ALGOL but the ALGOL 68 committee decided on a design that was more complex and advanced rather than a cleaned simplified ALGOL 60. The official ALGOL versions are named after the year they were first published. ALGOL 68 is substantially different from ALGOL 60 and was criticised partially for being so, so that in general "ALGOL" refers to dialects of ALGOL 60.


== Standardization ==
ALGOL 60 – with COBOL – were the first languages to seek standardization.

ISO 1538:1984 Programming languages – ALGOL 60 (stabilized)
ISO/TR 1672:1977 Hardware representation of ALGOL basic symbols ... (now withdrawn)


== History ==
ALGOL 60 was used mostly by research computer scientists in the United States and in Europe. Its use in commercial applications was hindered by the absence of standard input/output facilities in its description and the lack of interest in the language by large computer vendors. ALGOL 60 did however become the standard for the publication of algorithms and had a profound effect on future language development.
John Backus developed the Backus normal form method of describing programming languages specifically for ALGOL 58. It was revised and expanded by Peter Naur for ALGOL 60, and at Donald Knuth's suggestion renamed Backus–Naur form.
Peter Naur: "As editor of the ALGOL Bulletin I was drawn into the international discussions of the language and was selected to be member of the European language design group in November 1959. In this capacity I was the editor of the ALGOL 60 report, produced as the result of the ALGOL 60 meeting in Paris in January 1960."
The following people attended the meeting in Paris (from January 11 to 16):

Friedrich Ludwig Bauer, Peter Naur, Heinz Rutishauser, Klaus Samelson, Bernard Vauquois, Adriaan van Wijngaarden, and Michael Woodger (from Europe)
John Warner Backus, Julien Green, Charles Katz, John McCarthy, Alan Jay Perlis, and Joseph Henry Wegstein (from the USA).
Alan Perlis gave a vivid description of the meeting: "The meetings were exhausting, interminable, and exhilarating. One became aggravated when one's good ideas were discarded along with the bad ones of others. Nevertheless, diligence persisted during the entire period. The chemistry of the 13 was excellent."
The language originally did not include recursion. It was inserted into the specification at the last minute, against the wishes of some of the committee.
ALGOL 60 inspired many languages that followed it. Tony Hoare remarked: "Here is a language so far ahead of its time that it was not only an improvement on its predecessors but also on nearly all its successors."


=== ALGOL 60 implementations timeline ===
To date there have been at least 70 augmentations, extensions, derivations and sublanguages of ALGOL 60.

The Burroughs dialects included special system programming dialects such as ESPOL and NEWP.


== Properties ==
ALGOL 60 as officially defined had no I/O facilities; implementations defined their own in ways that were rarely compatible with each other. In contrast, ALGOL 68 offered an extensive library of transput (ALGOL 68 parlance for input/output) facilities.
ALGOL 60 provided two evaluation strategies for parameter passing: the common call-by-value, and call-by-name. The procedure declaration specified, for each formal parameter, which was to be used: value specified for call-by-value, and omitted for call-by-name. Call-by-name has certain effects in contrast to call-by-reference. For example, without specifying the parameters as value or reference, it is impossible to develop a procedure that will swap the values of two parameters if the actual parameters that are passed in are an integer variable and an array that is indexed by that same integer variable. Think of passing a pointer to swap(i, A[i]) in to a function. Now that every time swap is referenced, it's reevaluated. Say i := 1 and A[i] := 2, so every time swap is referenced it'll return the other combination of the values ([1,2], [2,1], [1,2] and so on). A similar situation occurs with a random function passed as actual argument.
Call-by-name is known by many compiler designers for the interesting "thunks" that are used to implement it. Donald Knuth devised the "man or boy test" to separate compilers that correctly implemented "recursion and non-local references." This test contains an example of call-by-name.


=== Language levels ===
The ALGOL 60 reports recognize three different levels of language, i.e., a Reference Language, a Publication Language, and several Hardware Representations. The Reference and Publication languages have no reserved words, however the reports do recommend reserving some identifiers for standard functions.
The reports briefly describe hardware representations. Implementations differ in their hardware representations of underlined independent basic symbols

Reserved words
Stropping


=== ALGOL 60 Reserved words and restricted identifiers ===
There are 24 reserved words in the Modified Report:

There are 35 such reserved words in the standard Burroughs Large Systems sub-language:

There are 71 such restricted identifiers in the standard Burroughs Large Systems sub-language: 

and also the names of all the intrinsic functions.


==== Standard operators ====


== Examples and portability issues ==


=== Code sample comparisons ===


==== ALGOL 60 ====
procedure Absmax(a) Size:(n, m) Result:(y) Subscripts:(i, k);
    value n, m; array a; integer n, m, i, k; real y;
comment The absolute greatest element of the matrix a, of size n by m,
    is copied to y, and the subscripts of this element to i and k;
begin
    integer p, q;
    y := 0; i := k := 1;
    for p := 1 step 1 until n do
        for q := 1 step 1 until m do
            if abs(a[p, q]) > y then
                begin y := abs(a[p, q]);
                    i := p; k := q
                end
end Absmax;

Implementations differ in how the text in bold must be written. The word 'INTEGER', including the quotation marks, must be used in some implementations in place of integer, above, thereby designating it as a special keyword.
Following is an example of how to produce a table using Elliott 803 ALGOL:

 FLOATING POINT ALGOL TEST'
 BEGIN REAL A,B,C,D'

 READ D'

 FOR A:= 0.0 STEP D UNTIL 6.3 DO
 BEGIN
   PRINT PUNCH(3),££L??'
   B := SIN(A)'
   C := COS(A)'
   PRINT PUNCH(3),SAMELINE,ALIGNED(1,6),A,B,C'
 END'
 END'


==== ALGOL 60 family ====
Since ALGOL 60 had no I/O facilities, there is no portable hello world program in ALGOL. The following program could (and still will) compile and run on an ALGOL implementation for a Unisys A-Series mainframe, and is a straightforward simplification of code taken from The Language Guide at the University of Michigan-Dearborn Computer and Information
Science Department Hello world! ALGOL Example Program page.

BEGIN
  FILE F(KIND=REMOTE);
  EBCDIC ARRAY E[0:11];
  REPLACE E BY "HELLO WORLD!";
  WRITE(F, *, E);
END.

Where * etc. represented a format specification as used in FORTRAN, e.g.
A simpler program using an inline format:

An even simpler program using the Display statement:

An alternative example, using Elliott Algol I/O is as follows. Elliott Algol used different characters for "open-string-quote" and "close-string-quote", represented here by   ‘  and   ’ .

Here's a version for the Elliott 803 Algol (A104) The standard Elliott 803 used 5-hole paper tape and thus only had upper case. The code lacked any quote characters so £ (pound sign) was used for open quote and ? (question mark) for close quote. Special sequences were placed in double quotes (e.g., £L?? produced a new line on the teleprinter).

  HIFOLKS'
  BEGIN
     PRINT £HELLO WORLD£L??'
  END'

The ICT 1900 series Algol I/O version allowed input from paper tape or punched card. Paper tape 'full' mode allowed lower case. Output was to a line printer. Note use of '(', ')', and %.

  'PROGRAM' (HELLO)
  'BEGIN'
     'COMMENT' OPEN QUOTE IS '(', CLOSE IS ')', PRINTABLE SPACE HAS TO
               BE WRITTEN AS % BECAUSE SPACES ARE IGNORED;
     WRITE TEXT('('HELLO%WORLD')');
  'END'
  'FINISH'


== LEAP ==
LEAP is an extension to the ALGOL 60 programming language which provides an associative memory of triples. The three items in a triple denote the association that an Attribute of an Object has a specific Value. LEAP was created by Jerome Feldman (University of California Berkeley) and Paul Rovner (MIT Lincoln Lab) in 1967. LEAP was also implemented in SAIL.


== See also ==


== References ==


=== Bibliography ===


== Further reading ==
Dijkstra, Edsger W. (1961). "ALGOL 60 Translation: An ALGOL 60 Translator for the X1 and Making a Translator for ALGOL 60 (PDF) (Technical report). Amsterdam: Mathematisch Centrum. 35.
Randell, Brian; Russell, Lawford John (1964). ALGOL 60 Implementation: The Translation and Use of ALGOL 60 Programs on a Computer. Academic Press. OCLC 526731. The design of the Whetstone Compiler. One of the early published descriptions of implementing a compiler. See the related papers: Whetstone Algol Revisited, and The Whetstone KDF9 ALGOL Translator by Brian Randell
Goos, Gerhard [in German] (2017-08-07). Geschichte der deutschsprachigen Informatik - Programmiersprachen und Übersetzerbau [History of informatics in German-speaking countries - Programming languages and compiler design] (PDF) (in German). Karlsruhe, Germany: Fakultät für Informatik, Karlsruhe Institute of Technology (KIT). Archived (PDF) from the original on 2022-05-19. Retrieved 2022-11-14. (11 pages)


== External links ==
Revised Report on the Algorithmic Language ALGOL 60 by Peter Naur, et al. ALGOL definition
A BNF syntax summary of ALGOL 60
"The Emperor's Old Clothes" – Hoare's 1980 ACM Turing Award speech, which discusses ALGOL history and his involvement
MARST, a free ALGOL-to-C translator
An Implementation of ALGOL 60 for the FP6000 Archived 2020-07-25 at the Wayback Machine Discussion of some implementation issues.
Naur, Peter (August 1978). "The European Side of the Last Phase of the Development of ALGOL 60". ACM SIGPLAN Notices. 13 (8): 15–44. doi:10.1145/960118.808370. S2CID 15552479.
Edinburgh University wrote compilers for Algol60 (later updated for Algol60M) based on their Atlas Autocode compilers initially bootstrapped from the Atlas to the KDF-9. The Edinburgh compilers generated code for the ICL1900, the ICL4/75 (an IBM360 clone), and the ICL2900. Here is the BNF for Algol60 Archived 2020-05-15 at the Wayback Machine and the ICL2900 compiler source Archived 2020-05-15 at the Wayback Machine, library documentation Archived 2020-05-15 at the Wayback Machine, and a considerable test suite Archived 2020-05-15 at the Wayback Machine including Brian Wichmann's tests. Archived 2020-05-15 at the Wayback Machine Also there is a rather superficial Algol60 to Atlas Autocode source-level translator Archived 2020-05-15 at the Wayback Machine.
Eric S. Raymond's Retrocomputing Museum, among others a link to the NASE ALGOL 60 interpreter written in C.
The NASE interpreter
Stories of the B5000 and People Who Were There: a dedicated ALGOL computer [1], [2]
Bottenbruch, Hermann (1961). Structure and Use of ALGOL 60 (Report). doi:10.2172/4020495. OSTI 4020495.
NUMAL A Library of Numerical Procedures in ALGOL 60 developed at The Stichting Centrum Wiskunde & Informatica (legal successor of Stichting Mathematisch Centrum) legal owner.
ALGOL 60 resources: translators, documentation, programs
ALGOL 60 included in Racket