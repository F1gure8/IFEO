foreach ($child in (Get-ChildItem "hklm:\software\microsoft\windows nt\currentversion\image file execution options") ){

	write-output $child

	if ( $child.Property | select-string -Pattern "Debugger" ) {
		
		write-warning $child
		foreach ($prop in $child.Property){
			write-warning ("      " + $prop)
		}
	}
}
