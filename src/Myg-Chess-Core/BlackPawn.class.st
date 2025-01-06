Class {
	#name : 'BlackPawn',
	#superclass : 'Pawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
BlackPawn >> renderPieceOnBlackSquare [

	^ 'o'.
]

{ #category : 'rendering' }
BlackPawn >> renderPieceOnWhiteSquare [

	^ 'O'.
]

{ #category : 'as yet unclassified' }
BlackPawn >> targetSquaresLegal: aBoolean [
"Comportement spécifique à BlackPawn, ou appeler la méthode de base"
    ^ super targetSquaresLegal: aBoolean.
]
