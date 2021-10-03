scriptName JustDesserts_SweetJusticeEffect extends ActiveMagicEffect  

Form property FoodSweetroll auto
Explosion property FXDragonPriestSmallExplosion auto

event OnEffectStart(Actor target, Actor caster)
    target.Disable()
    target.Kill()
    int numberOfSweetrolls = 75
    target.PlaceAtMe(FXDragonPriestSmallExplosion)
    target.PlaceAtMe(FoodSweetroll, numberOfSweetrolls)
endEvent
