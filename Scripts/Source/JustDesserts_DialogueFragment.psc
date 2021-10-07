;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname JustDesserts_DialogueFragment Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
int numberOfSweetrolls = JustDesserts_SweetRollCount.Value as int
if (JustDesserts_Disable.Value as int) == 1
    akSpeaker.Disable()
endIf
akSpeaker.SetRace(InvisibleRace)
if (JustDesserts_Kill.Value as int) == 1
    akSpeaker.Kill()
endIf
akSpeaker.PlaceAtMe(FXDragonPriestSmallExplosion)
akSpeaker.PlaceAtMe(FoodSweetroll, numberOfSweetrolls)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property JustDesserts_SweetRollCount  Auto  

GlobalVariable Property JustDesserts_Kill  Auto  

GlobalVariable Property JustDesserts_Disable  Auto  

Form Property FoodSweetroll  Auto  

Explosion Property FXDragonPriestSmallExplosion  Auto  

Race Property InvisibleRace  Auto  
