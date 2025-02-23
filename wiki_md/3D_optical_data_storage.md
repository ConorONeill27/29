# 3D optical data storage

3D optical data storage is any form of optical data storage in which information can be recorded or read with three-dimensional resolution (as opposed to the two-dimensional resolution afforded, for example, by CD).
This innovation has the potential to provide petabyte-level mass storage on DVD-sized discs (120 mm). Data recording and readback are achieved by focusing lasers within the medium. However, because of the volumetric nature of the data structure, the laser light must travel through other data points before it reaches the point where reading or recording is desired. Therefore, some kind of nonlinearity is required to ensure that these other data points do not interfere with the addressing of the desired point.
No commercial product based on 3D optical data storage has yet arrived on the mass market, although several companies are actively developing the technology and claim that it may become available 'soon'.


== Overview ==
Current optical data storage media, such as the CD and DVD store data as a series of reflective marks on an internal surface of a disc. In order to increase storage capacity, it is possible for discs to hold two or even more of these data layers, but their number is severely limited since the addressing laser interacts with every layer that it passes through on the way to and from the addressed layer. These interactions cause noise that limits the technology to approximately 10 layers. 3D optical data storage methods circumvent this issue by using addressing methods where only the specifically addressed voxel (volumetric pixel) interacts substantially with the addressing light. This necessarily involves nonlinear data reading and writing methods, in particular nonlinear optics.
3D optical data storage is related to (and competes with) holographic data storage. Traditional examples of holographic storage do not address in the third dimension, and are therefore not strictly "3D", but more recently 3D holographic storage has been realized by the use of microholograms. Layer-selection multilayer technology (where a multilayer disc has layers that can be individually activated e.g. electrically) is also closely related.

As an example, a prototypical 3D optical data storage system may use a disc that looks much like a transparent DVD. The disc contains many layers of information, each at a different depth in the media and each consisting of a DVD-like spiral track. In order to record information on the disc a laser is brought to a focus at a particular depth in the media that corresponds to a particular information layer. When the laser is turned on it causes a photochemical change in the media. As the disc spins and the read/write head moves along a radius, the layer is written just as a DVD-R is written. The depth of the focus may then be changed and another entirely different layer of information written. The distance between layers may be 5 to 100 micrometers, allowing >100 layers of information to be stored on a single disc.
In order to read the data back (in this example), a similar procedure is used except this time instead of causing a photochemical change in the media the laser causes fluorescence. This is achieved e.g. by using a lower laser power or a different laser wavelength. The intensity or wavelength of the fluorescence is different depending on whether the media has been written at that point, and so by measuring the emitted light the data is read.
The size of individual chromophore molecules or photoactive color centers is much smaller than the size of the laser focus (which is determined by the diffraction limit). The light, therefore, addresses a large number (possibly even 109) of molecules at any one time, so the medium acts as a homogeneous mass rather than a matrix structured by the positions of chromophores.


== History ==
The origins of the field date back to the 1950s, when Yehuda Hirshberg developed the photochromic spiropyrans and suggested their use in data storage. In the 1970s, Valerii Barachevskii demonstrated that this photochromism could be produced by two-photon excitation, and at the end of the 1980s Peter M. Rentzepis showed that this could lead to three-dimensional data storage. A wide range of physical phenomena for data reading and recording have been investigated, large numbers of chemical systems for the medium have been developed and evaluated, and extensive work has been carried out in solving the problems associated with the optical systems required for the reading and recording of data. Currently, several groups remain working on solutions with various levels of development and interest in commercialization.


== Processes for creating written data ==
Data recording in a 3D optical storage medium requires that a change take place in the medium upon excitation. This change is generally a photochemical reaction of some sort, although other possibilities exist. Chemical reactions that have been investigated include photoisomerizations, photodecompositions and photobleaching, and polymerization initiation. Most investigated have been photochromic compounds, which include azobenzenes, spiropyrans, stilbenes, fulgides, and diarylethenes. If the photochemical change is reversible, then rewritable data storage may be achieved, at least in principle. Also, MultiLevel Recording, where data is written in "grayscale" rather than as "on" and "off" signals, is technically feasible.


=== Writing by nonresonant multiphoton absorption ===
Although there are many nonlinear optical phenomena, only multiphoton absorption is capable of injecting into the media the significant energy required to electronically excite molecular species and cause chemical reactions. Two-photon absorption is the strongest multiphoton absorbance by far, but still it is a very weak phenomenon, leading to low media sensitivity. Therefore, much research has been directed at providing chromophores with high two-photon absorption cross-sections.
Writing by two-photon absorption can be achieved by focusing the writing laser on the point where the photochemical writing process is required. The wavelength of the writing laser is chosen such that it is not linearly absorbed by the medium, and therefore it does not interact with the medium except at the focal point. At the focal point two-photon absorption becomes significant, because it is a nonlinear process dependent on the square of the laser fluence.
Writing by two-photon absorption can also be achieved by the action of two lasers in coincidence. This method is typically used to achieve the parallel writing of information at once. One laser passes through the media, defining a line or plane. The second laser is then directed at the points on that line or plane that writing is desired. The coincidence of the lasers at these points excited two-photon absorption, leading to writing photochemistry.


=== Writing by sequential multiphoton absorption ===
Another approach to improving media sensitivity has been to employ resonant two-photon absorption (also known as "1+1" or "sequential" two–photon absorbance). Nonresonant two-photon absorption (as is generally used) is weak since in order for excitation to take place, the two exciting photons must arrive at the chromophore at almost exactly the same time. This is because the chromophore is unable to interact with a single photon alone. However, if the chromophore has an energy level corresponding to the (weak) absorption of one photon then this may be used as a stepping stone, allowing more freedom in the arrival time of photons and therefore a much higher sensitivity. However, this approach results in a loss of nonlinearity compared to nonresonant two–photon absorbance (since each two-photon absorption step is essentially linear), and therefore risks compromising the 3D resolution of the system.


=== Microholography ===
In microholography, focused beams of light are used to record submicrometre-sized holograms in a photorefractive material, usually by the use of collinear beams. The writing process may use the same kinds of media that are used in other types of holographic data storage, and may use two–photon processes to form the holograms.


=== Data recording during manufacturing ===
Data may also be created in the manufacturing of the media, as is the case with most optical disc formats for commercial data distribution. In this case, the user can not write to the disc –  it is a ROM format. Data may be written by a nonlinear optical method, but in this case the use of very high power lasers is acceptable so media sensitivity becomes less of an issue.
The fabrication of discs containing data molded or printed into their 3D structure has also been demonstrated. For example, a disc containing data in 3D may be constructed by sandwiching together a large number of wafer-thin discs, each of which is molded or printed with a single layer of information. The resulting ROM disc can then be read using a 3D reading method.


=== Other approaches to writing ===
Other techniques for writing data in three-dimensions have also been examined, including:
Persistent spectral hole burning (PSHB), which also allows the possibility of spectral multiplexing to increase data density. However, PSHB media currently requires extremely low temperatures to be maintained in order to avoid data loss.
Void formation, where microscopic bubbles are introduced into a media by high intensity laser irradiation.
Chromophore poling, where the laser-induced reorientation of chromophores in the media structure leads to readable changes.


== Processes for reading data ==
The reading of data from 3D optical memories has been carried out in many different ways. While some of these rely on the nonlinearity of the light-matter interaction to obtain 3D resolution, others use methods that spatially filter the media's linear response. Reading methods include:
Two photon absorption (resulting in either absorption or fluorescence). This method is essentially two-photon microscopy.
Linear excitation of fluorescence with confocal detection. This method is essentially confocal laser scanning microscopy. It offers excitation with much lower laser powers than does two-photon absorbance, but has some potential problems because the addressing light interacts with many other data points in addition to the one being addressed.
Measurement of small differences in the refractive index between the two data states. This method usually employs a phase-contrast microscope or confocal reflection microscope. No absorption of light is necessary, so there is no risk of damaging data while reading, but the required refractive index mismatch in the disc may limit the thickness (i.e., number of data layers) that the media can reach due to the accumulated random wavefront errors that destroy the focused spot quality.
Second-harmonic generation has been demonstrated as a method to read data written into a poled polymer matrix.
Optical coherence tomography has also been demonstrated as a parallel reading method.


== Media design ==
The active part of 3D optical storage media is usually an organic polymer either doped or grafted with the photochemically active species. Alternatively, crystalline and sol-gel materials have been used.


=== Media form factor ===
Media for 3D optical data storage have been suggested in several form factors: disk, card and crystal.
A disc media offers a progression from CD/DVD, and allows reading and writing to be carried out by the familiar spinning disc method.
A credit card form factor media is attractive from the point of view of portability and convenience, but would be of a lower capacity than a disc.
Several science fiction writers have suggested small solids that store massive amounts of information, and at least in principle this could be achieved with 5D optical data storage.


=== Media manufacturing ===
The simplest method of manufacturing –  the molding of a disk in one piece –  is a possibility for some systems. A more complex method of media manufacturing is for the media to be constructed layer by layer. This is required if the data is to be physically created during manufacture. However, layer-by-layer construction need not mean the sandwiching of many layers together. Another alternative is to create the medium in a form analogous to a roll of adhesive tape.


== Drive design ==
A drive designed to read and write to 3D optical data storage media may have a lot in common with CD/DVD drives, particularly if the form factor and data structure of the media is similar to that of CD or DVD. However, there are a number of notable differences that must be taken into account when designing such a drive.


=== Laser ===
Particularly when two-photon absorption is utilized, high-powered lasers may be required that can be bulky, difficult to cool, and pose safety concerns. Existing optical drives utilize continuous wave diode lasers operating at 780 nm, 658 nm, or 405 nm. 3D optical storage drives may require solid-state lasers or pulsed lasers, and several examples use wavelengths easily available by these technologies, such as 532 nm (green). These larger lasers can be difficult to integrate into the read/write head of the optical drive.


=== Variable spherical aberration correction ===
Because the system must address different depths in the medium, and at different depths the spherical aberration induced in the wavefront is different, a method is required to dynamically account for these differences. Many possible methods exist that include optical elements that swap in and out of the optical path, moving elements, adaptive optics, and immersion lenses.


=== Optical system ===
In many examples of 3D optical data storage systems, several wavelengths (colors) of light are used (e.g. reading laser, writing laser, signal; sometimes even two lasers are required just for writing). Therefore, as well as coping with the high laser power and variable spherical aberration, the optical system must combine and separate these different colors of light as required.


=== Detection ===
In DVD drives, the signal produced from the disc is a reflection of the addressing laser beam, and is therefore very intense. For 3D optical storage however, the signal must be generated within the tiny volume that is addressed, and therefore it is much weaker than the laser light. In addition, fluorescence is radiated in all directions from the addressed point, so special light collection optics must be used to maximize the signal.


=== Data tracking ===
Once they are identified along the z-axis, individual layers of DVD-like data may be accessed and tracked in similar ways to DVDs. The possibility of using parallel or page-based addressing has also been demonstrated. This allows much faster data transfer rates, but requires the additional complexity of spatial light modulators, signal imaging, more powerful lasers, and more complex data handling.


== Development issues ==
Despite the highly attractive nature of 3D optical data storage, the development of commercial products has taken a significant length of time. This results from limited financial backing in the field, as well as technical issues, including:
Destructive reading. Since both the reading and the writing of data are carried out with laser beams, there is a potential for the reading process to cause a small amount of writing. In this case, the repeated reading of data may eventually serve to erase it (this also happens in phase change materials used in some DVDs). This issue has been addressed by many approaches, such as the use of different absorption bands for each process (reading and writing), or the use of a reading method that does not involve the absorption of energy.
Thermodynamic stability. Many chemical reactions that appear not to take place in fact happen very slowly. In addition, many reactions that appear to have happened can slowly reverse themselves. Since most 3D media are based on chemical reactions, there is therefore a risk that either the unwritten points will slowly become written or that the written points will slowly revert to being unwritten. This issue is particularly serious for the spiropyrans, but extensive research was conducted to find more stable chromophores for 3D memories.
Media sensitivity. two-photon absorption is a weak phenomenon, and therefore high power lasers are usually required to produce it. Researchers typically use Ti-sapphire lasers or Nd:YAG lasers to achieve excitation, but these instruments are not suitable for use in consumer products.


== Academic development ==
Much of the development of 3D optical data storage has been carried out in universities. The groups that have provided valuable input include:

Peter T. Rentzepis was the originator of this field, and has recently developed materials free from destructive readout.
Watt W. Webb codeveloped the two-photon microscope in Bell Labs, and showed 3D recording on photorefractive media.
Masahiro Irie developed the diarylethene family of photochromic materials.
Yoshimasa Kawata, Satoshi Kawata, and Zouheir Sekkat have developed and worked on several optical data manipulation systems, in particular involving poled polymer systems.
Kevin C Belfield is developing photochemical systems for 3D optical data storage by the use of resonance energy transfer between molecules, and also develops high two–photon cross-section materials.
Seth Marder performed much of the early work developing logical approaches to the molecular design of high two–photon cross-section chromophores.
Tom Milster has made many contributions to the theory of 3D optical data storage.
Robert McLeod has examined the use of microholograms for 3D optical data storage.
Min Gu has examined confocal readout and methods for its enhancement.


== Commercial development ==
In addition to the academic research, several companies have been set up to commercialize 3D optical data storage and some large corporations have also shown an interest in the technology. However, it is not yet clear whether the technology will succeed in the market in the presence of competition from other quarters such as hard drives, flash storage, and holographic storage.

Call/Recall was founded in 1987 on the basis of Peter Rentzepis' research. Using two–photon recording (at 25 Mbit/s with 6.5 ps, 7 nJ, 532 nm pulses), one–photon readout (with 635 nm), and a high NA (1.0) immersion lens, they have stored 1 TB as 200 layers in a 1.2 mm thick disk. They aim to improve capacity to >5 TB and data rates to up to 250 Mbit/s within a year, by developing new materials as well as high-powered pulsed blue laser diodes.
Mempile are developing a commercial system with the name TeraDisc. In March 2007, they demonstrated the recording and readback of 100 layers of information on a 0.6 mm thick disc, as well as low crosstalk, high sensitivity, and thermodynamic stability. They intend to release a red-laser 0.6-1.0 TB consumer product in 2010, and have a roadmap to a 5 TB blue-laser product.
Constellation 3D developed the Fluorescent Multilayer Disc at the end of the 1990s, which was a ROM disk, manufactured layer by layer. The company failed in 2002, but the intellectual property (IP) was acquired by D-Data Inc., who are attempting to introduce it as the Digital Multilayer Disk (DMD).
Storex Technologies has been set up to develop 3D media based on fluorescent photosensitive glasses and glass-ceramic materials. The technology derives from the patents of the Romanian scientist Eugen Pavel, who is also the founder and CEO of the company. At ODS2010 conference were presented results regarding readout by two non-fluorescence methods of a Petabyte Optical Disc.
Landauer Inc. are developing a media based on resonant two-photon absorption in a sapphire single crystal substrate. In May 2007, they showed the recording of 20 layers of data using 2 nJ of laser energy (405 nm) for each mark. The reading rate is limited to 10 Mbit/s because of the fluorescence lifetime.
Colossal Storage aim to develop a 3D holographic optical storage technology based on photon-induced electric field poling using a far UV laser to obtain large improvements over current data capacity and transfer rates, but as yet they have not presented any experimental research or feasibility study.
Microholas operates out of the University of Berlin, under the leadership of Prof Susanna Orlic, and has achieved the recording of up to 75 layers of microholographic data, separated by 4.5 micrometres, and suggesting a data density of 10 GB per layer.
3DCD Technology Pty. Ltd. is a university spin-off set up to develop 3D optical storage technology based on materials identified by Daniel Day and Min Gu.
Several large technology companies such as Fuji, Ricoh, and Matsushita have applied for patents on two–photon-responsive materials for applications including 3D optical data storage, however they have not given any indication that they are developing full data storage solutions.


== See also ==
Dual layer
5D optical data storage
List of emerging technologies


== References ==