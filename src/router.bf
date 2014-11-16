[
		This is the router module. It decides which file to call for the called URL
]


>+[[-]>+++++[<+++++>-]<++<+>-]<								Enable extended mode

		First we can remove the prepended slash
>>>>														(S4)
[-]>														(S5)

		Ok; first we move S5 to S10
[>]<[[>>>>>+<<<<<-]<]										(S4)

>>>>>>														(S10)
		Ok; first we check if the URL was /
<<[-]+>>
---[+++
	<
]

		If it was / then the pointer is at S10 now
		if not; the pointer is at S9 now
		S8 is 0x01 and S7 is 0x00; so if we go two step left
		and the value is 0x01 then it was /
<<[															(S8)
			Ok; it was /; call post;bf and return value
			We need the following structure:

			S1: 0x02 (call file)
			S2: 0x05 (S4)
			S3: 0x05 (S4)
			S5: 0x68 (h)
			S6: 0x6F (o)
			S7: 0x6D (m)
			S8: 0x65 (e)
			S9: 0x03
		>>+++<<	
		[-]<[-]<[-]<[-]<[-]<[-]<[-]<[-]++>[-]+++++>[-]+++++>[-]
		++++++++++[>++++++++++>+++++++++++>+++++++++++>++++++++++<<<<-]
		>++++
		>+
		>-
		>+
		>+++
				Call file
		[<]<[<]+
				End pipe the return value
		>[-]+<+
]

		Ok; now we have to check which URL was called;
		For this everytime we need wo following structure:

		S1: 0x02 (call file)
		S2: 0x06 (S6)
		S3: 0x04 (S4)
		S4: Return value from string compare (0 or 1)
		S5: Return value from string compare (0x04)
		S6: 0x73 (s)
		S7: 0x63 (c)
		S8: 0x03
		S9: 0x00 (Marker)


<<<<<<[-]++>[-]++++++>[-]++++>[-]>[-]
>[-]>[-]<<
++++++++++[>+++++++++++>++++++++++<<-]
>+++++>-
>[-]+++>[-]													(S9)

		Ok; let's test if admin	
		First move everything right (S10 to S15)
		S9:  0x61 (a)
		S10: 0x65 (d)
		S11: 0x6D (m)
		S12: 0x69 (i)
		S13: 0x6E (n)

>[>]<[[>>>>>+<<<<<-]<]
<[-]++++++++++[>++++++++++>++++++++++>+++++++++++>++++++++++>+++++++++++<<<<<-]+++
>---
>
>-
>+++++
>
>[-]+++
		And change S20 from 0x03 to 0x04
>---[+++>---]++++
[<]<<<<<+

		Change the 0x04 to 0x03
>>>>>>----[++++>----]+++
----[++++<----]++++

		So; if S4 is 0x01 it is /admin otherwise it is 0x00
<
[
			Ok; it is /admin
			Structure:
			S1: 0x02
			S2: 0x09
			S3: 0x04
			S4: 0x04
		[-]++++<[-]++++<[-]+++++++++<[-]++<+

			And pipe return value
		>[-]+>[-]++++>[-]++++[<]+
]

		We don't need S9 to S14 anymore; remove it
>>>>>>>>
[-]>[-]>[-]>[-]>[-]>[-]>
[[<<<<<<+>>>>>>-]>]----[++++<----]++++<----[++++<----]++++
>>>>

#
		(Notice: At this point we have to be at S9)

		Ok; we don't know => 404

		S1: 0x01
		S2: 0x04
		S3: 0x04
		S4: 0x34 (4)
		S5: 0x40 (0)
		S6: 0x34 (4)
		S7: 0x04

<<
<<[-]<[-]<[-]>>
>[-]++++++++++[<+++++<+++++<+++++>>>-]++++
<++
<--
<++
<[-]++++
<[-]++++
<[-]+
<+
