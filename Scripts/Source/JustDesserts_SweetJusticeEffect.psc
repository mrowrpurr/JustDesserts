scriptName JustDesserts_SweetJusticeEffect extends ActiveMagicEffect  

Form property FoodSweetroll auto
Explosion property FXDragonPriestSmallExplosion auto

event OnEffectStart(Actor target, Actor caster)
    ; target.Kill()
    target.Disable()
    target.Kill()
    ; int numberOfSweetrolls = Utility.RandomInt(50, 75)
    int numberOfSweetrolls = 75
    target.PlaceAtMe(FXDragonPriestSmallExplosion)
    target.PlaceAtMe(FoodSweetroll, numberOfSweetrolls)
endEvent
