reinitialize
load highpH_cryo.map
load lowpH_cryo.pdb
load lowpH_rt.pdb
load highpH_rt.pdb
alignto highpH_cryo and chain B+D
set volume_layers, 2000
#set ray_volume, 1
set ribbon_sampling, 10
set stick_radius, 0.15
set bg_rgb, white
set ray_opaque_background, 0

cmd.volume_ramp_new('ramp_green', [    0.01, 0.00, 1.00, \
    0.00, 0.00, 4.01, \
    0.00, 1.00, 0.00, \
    0.10, 4.99, 0.00, \
    1.00, 0.00, 0.50])

cmd.volume_ramp_new('ramp_magenta', [    0.01, 1.00, 0.00, 1.00, 0.00,     4.01, 1.00, 0.00, 1.00, 0.10,     4.99, 1.00, 0.00, 1.00, 0.50,     ])
cmd.volume_ramp_new('ramp_blue', [    0.01, 0.00, 0.00, 1.00, 0.00,     4.01, 0.00, 0.00, 1.00, 0.10,     4.99, 0.00, 0.00, 1.00, 0.50,     ])
load channel_2.pdb
load highpH_cryo_2mFo-DFc.ccp4
matrix_copy highpH_cryo, highpH_cryo_2mFo-DFc
disable all
load lowpH_cryo_2mFo-DFc.ccp4
matrix_copy lowpH_cryo, lowpH_cryo_2mFo-DFc
disable all
load lowpH_rt_2mFo-DFc.ccp4
matrix_copy lowpH_rt, lowpH_rt_2mFo-DFc
disable all
load highpH_rt_2mFo-DFc.ccp4
matrix_copy highpH_rt, highpH_rt_2mFo-DFc
disable all

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable highpH_cryo
hide everything, highpH_cryo
show cartoon,  highpH_cryo
color grey70, highpH_cryo
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain A

hide sticks, alt B+C+D
hide sticks, name CA
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume highpH_cryo_vol_magenta, highpH_cryo_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color highpH_cryo_vol_magenta, ramp_magenta

ray
png highpH_cryo_magenta_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable lowpH_cryo
hide everything, lowpH_cryo
show cartoon,  lowpH_cryo
color grey70, lowpH_cryo
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain B

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume lowpH_cryo_vol_magenta, lowpH_cryo_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color lowpH_cryo_vol_magenta, ramp_magenta

ray
png lowpH_cryo_magenta_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821, \
	0.889528990,   -0.027698873,    0.456087917, \
    -0.017682521,    0.995325387,    0.094962828, \
    0.000069036,    0.000050362,  -53.305934906, \
	2.346937418,    1.179337502,    3.110260248, \
    39.645729065,   67.022422791,   20.000000000 )

enable lowpH_rt
hide everything, lowpH_rt
show cartoon,  lowpH_rt
color grey70, lowpH_rt
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain D

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume lowpH_rt_vol_magenta, lowpH_rt_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color lowpH_rt_vol_magenta, ramp_magenta

ray
png lowpH_rt_magenta_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable highpH_rt
hide everything, highpH_rt
show cartoon,  highpH_rt
color grey70, highpH_rt
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain A

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume highpH_rt_vol_magenta, highpH_rt_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color highpH_rt_vol_magenta, ramp_magenta

ray
png highpH_rt_magenta_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable highpH_cryo
hide everything, highpH_cryo
show cartoon,  highpH_cryo
color grey70, highpH_cryo
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain A

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume highpH_cryo_vol_green, highpH_cryo_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color highpH_cryo_vol_green, ramp_green

ray
png highpH_cryo_green_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable lowpH_cryo
hide everything, lowpH_cryo
show cartoon,  lowpH_cryo
color grey70, lowpH_cryo
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain B

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume lowpH_cryo_vol_green, lowpH_cryo_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color lowpH_cryo_vol_green, ramp_green
ray
png lowpH_cryo_green_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable lowpH_rt
hide everything, lowpH_rt
show cartoon,  lowpH_rt
color grey70, lowpH_rt
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain D

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume lowpH_rt_vol_green, lowpH_rt_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color lowpH_rt_vol_green, ramp_green

ray
png lowpH_rt_green_JUSTSTRU_20140824.png

disable all
set_view (-0.456564099,   -0.092519455,    0.884874821,	0.889528990,   -0.027698873,    0.456087917,-0.017682521,    0.995325387,    0.094962828,	0.000069036,    0.000050362,  -53.305934906,	2.346937418,    1.179337502,    3.110260248,39.645729065,   67.022422791,   20.000000000 )

enable highpH_rt
hide everything, highpH_rt
show cartoon,  highpH_rt
color grey70, highpH_rt
set cartoon_oval_width, 0.2
set cartoon_oval_length, 0.7
alter A/24:46/, ss='H'
alter B/24:46/, ss='H'
alter C/24:46/, ss='H'
alter D/24:46/, ss='H'

show sticks, resi 31+27+37
show sticks, resi 27+31+30+34 and name C+O
hide everything, name H*
hide everything, chain A

hide sticks, alt B+C+D
hide sticks, name N
color red, name OG+O
color blue, name ND1+NE2

hide everything, ele h
show sticks, ele h and neighbor (ele n+o)

#volume highpH_rt_vol_green, highpH_rt_2mFo-DFc, selection=channel_2, carve=1.5
#volume_color highpH_rt_vol_green, ramp_green

ray
png highpH_rt_green_JUSTSTRU_20140824.png

# BSD 3-Clause License

# Copyright (c) 2017, Benjamin Barad
# All rights reserved.

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:

# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.

# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.

# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.

# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


