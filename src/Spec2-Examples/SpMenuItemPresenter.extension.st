Extension { #name : #SpMenuItemPresenter }

{ #category : #'*Spec2-Examples' }
SpMenuItemPresenter class >> example [
	| presenter menuButton loremIpsumWords |

	(presenter := SpPresenter new) 
		layout: (SpBoxLayout newVertical
			add: (SpBoxLayout newHorizontal
					addLast: (menuButton := presenter newMenuButton) expand: false;
					yourself)
				expand: false;
			yourself).	

	loremIpsumWords := String loremIpsum substrings.
	menuButton menu: [ 
		SpMenuPresenter new
			addGroup: [ :group | group
				addItem: [ :item | item name: '1: ', loremIpsumWords atRandom ];
				addItem: [ :item | item name: '2: ', loremIpsumWords atRandom ];
				addItem: [ :item | item name: '3: ', loremIpsumWords atRandom ] ];
			yourself ].
		
	^ presenter openWithSpec
]