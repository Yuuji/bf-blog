>+[[-]>+++++[<+++++>-]<++<+>-]<					Enable extended mode

>>>>								S4
[>]<[[>>+<<-]<]							Move everything two right (S6)

>>>								S6
---[+++								Solange nicht 0x03
	<<[-]<[-]>>>[<<<+>>>-]					Move first char of first parameter 2 left
	---[+++>---]+++						Search 0x03
	>
	[[<]<<+>>---[+++>---]+++>-]				Move first char of second parameter right to first char of first parameter

	>[[<+>-]>]						Move second parameter one left
	<<[<]							S6

	Now we compare S3 and S4:
	<<<							S3
	
	<[-]<[-]
	>>[<+>-]
	>[<<-<+>>>-]
	<<<[>>>+<<<-]
	>[>+<[-]]
	>
	[							If chars are different
		>[-]>[-]++++<<[-]++++<[-]++++<[-]+<+		Return 0x00
	]
	>>>							S6
	

	>[[<+>-]>]
	<<[<]>
	
---]+++

>

Check if next char is 0x04 (there is no char left in second parameter)
----[								No; there is one more
	<<[-]++++<[-]<[-]++++<[-]++++<[-]+<+			Return 0x00
]
<

Everything same
<[-]++++<[-]+<[-]++++<[-]++++<[-]+<+				Return 0x01
