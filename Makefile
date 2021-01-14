# Open the default IDE for a Swift project.
open:
	open Package.swift

lint:
	swiftlint autocorrect
	swiftformat .
