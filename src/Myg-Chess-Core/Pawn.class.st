Class {
	#name : 'Pawn',
	#superclass : 'MyPiece',
	#instVars : [
		'captureState',
		'forwardState',
		'Square'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
Pawn >> id [

	^ 'P'
]

{ #category : 'initialization' }
Pawn >> initialize [ 
    super initialize.
    forwardState := InitialForwardState new.
    captureState := DiagonalCaptureState new.
]

{ #category : 'as yet unclassified' }
Pawn >> legalMoves [
    | moves |
    moves := OrderedCollection new.
    
    "Ajoute les mouvements d'avance depuis l'état actuel"
    moves addAll: (forwardState legalMovesFor: self).

    "Ajoute les mouvements de capture depuis l'état actuel"
    moves addAll: (captureState legalMovesFor: self).

    ^ moves
]

{ #category : 'as yet unclassified' }
Pawn >> promoteToNormalForward [
forwardState := NormalForwardState new.
]

{ #category : 'rendering' }
Pawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'initialization' }
Pawn >> resetCaptureState [
captureState := DiagonalCaptureState new.
]

{ #category : 'as yet unclassified' }
Pawn >> targetSquaresLegal [
| moves |
    moves := OrderedCollection new.

    "Ajoute les mouvements en avant"
    moves addAll: (forwardState legalMovesFor: self).

    "Ajoute les captures"
    moves addAll: (captureState legalMovesFor: self).

    ^ moves.
]
