>+[[-]>+++++[<+++++>-]<++<+>-]<								Enable extended mode

		Ok; we need the following structure:
		
		S1:  0x02 (call file)
		S2:  0x06 (S6)
		S3:  0x04 (S4)
		S4:  0x00 (for return value)
		S5:  0x00 (for return value)
		S6:  0x62 (b)
		S7:  0x74 (t)
		S8:  0x03
		S9:  0x74 (t)
		S10: 0x70 (p)
		S11: 0x6C (l)
		S12: 0x2F (/)
		S13: 0x68 (h)
		S14: 0x6F (o)
		S15: 0x6D (m)
		S16: 0x65 (e)
		S17: 0x2E (point)
		S18: 0x74 (t)
		S19: 0x70 (p)
		S20: 0x6C (l)
		S21: 0x03

		Ok; first move everything right (S4 => S22)
>>>>[>]<[[>>>>>>>>>>>>>>>>>>+<<<<<<<<<<<<<<<<<<-]<]<<
[-]++
>[-]++++++
>[-]++++
>[-]
>[-]

++++++++++
[
	>++++++++++
	>++++++++++++
	>
	>++++++++++++
	>+++++++++++
	>+++++++++++
	>+++++
	>++++++++++
	>+++++++++++
	>+++++++++++
	>++++++++++
	>+++++
	>++++++++++++
	>+++++++++++
	>+++++++++++
	<<<<<<<<<<<<<<<
	-
]

>--
>----
>[-]+++
>----
>++
>--
>---
>++++
>+
>-
>+
>----
>----
>++
>--
>[-]+++

[<]<<<<<+

		Now return 200:

		S1: 0x01
		S2: 0x04
		S3: 0x04
		S4: 0x34 (2)
		S5: 0x30 (0)
		S6: 0x34 (0)
		S7: 0x04

>[-]+>[-]++++
>[-]++++++++++>[-]>[-]>[-]<<<
[>+++++>+++++>+++++<<<-]
++++
>
>--
>--
>[-]++++
[<]+
