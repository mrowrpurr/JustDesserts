scriptName JustDesserts_SweetJusticeEffect extends ActiveMagicEffect  

Race           property InvisibleRace                auto
Form           property FoodSweetroll                auto
Explosion      property FXDragonPriestSmallExplosion auto
GlobalVariable property JustDesserts_SweetRollCount  auto
GlobalVariable property JustDesserts_Kill            auto
GlobalVariable property JustDesserts_Disable         auto

event OnEffectStart(Actor target, Actor caster)
    int numberOfSweetrolls = JustDesserts_SweetRollCount.Value as int
    if (JustDesserts_Disable.Value as int) == 1
        target.Disable()
    endIf
    target.SetRace(InvisibleRace)
    if (JustDesserts_Kill.Value as int) == 1
        target.Kill()
    endIf
    target.PlaceAtMe(FXDragonPriestSmallExplosion)
    target.PlaceAtMe(FoodSweetroll, numberOfSweetrolls)
endEvent
