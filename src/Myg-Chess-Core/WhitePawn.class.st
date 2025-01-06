Class {
	#name : 'WhitePawn',
	#superclass : 'Pawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
WhitePawn >> renderPieceOnBlackSquare [

	^ 'p'.
]

{ #category : 'rendering' }
WhitePawn >> renderPieceOnWhiteSquare [

	^ 'P'.
]

{ #category : 'as yet unclassified' }
WhitePawn >> targetSquaresLegal: aBoolean [
"Comportement spécifique à WhitePawn, ou appeler la méthode de base"
    ^ super targetSquaresLegal: aBoolean.
]
