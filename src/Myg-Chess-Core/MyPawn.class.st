Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'testing' }
MyPawn >> isAtStartingPosition [

	^ self isWhite 
	ifTrue: [ square file = $2 ]
	ifFalse: [ square file = $7 ].
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [ 
    | legalMoves moveOne moveTwo |

    legalMoves := OrderedCollection new.

    "Définit les mouvements en avant selon la couleur du pion"
    moveOne := self isWhite ifTrue: [ square up ] ifFalse: [ square down ].
    moveTwo := self isWhite ifTrue: [ square up up ] ifFalse: [ square down down ].

    "Ajoute le mouvement de 1 case en avant si la case est libre"
    (moveOne notNil and: [ moveOne hasPiece not ])
        ifTrue: [ legalMoves addLast: moveOne ].

    "Ajoute le mouvement de 2 cases en avant si le pion est en position initiale et les cases sont libres"
    (self isAtStartingPosition and: [
        moveOne hasPiece not and: [ moveTwo hasPiece not ]
    ]) ifTrue: [ legalMoves addLast: moveTwo ].

^legalMoves
]
