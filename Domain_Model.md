Organization 
1) rails g sca Organization team:references name:string

2) bin/super-scaffold crud Organization Team name:text_field

3) rake db:migrate

Municipality 
4) rails g model Municipality organization:references name:string url:string

5) bin/super-scaffold crud Municipality Organization,Team name:text_field url:text_field

6) rake db:migrate

ServiceProvider 
7) rails g model ServiceProvider name:string about:text street:string city:string state:string zip:string contact_person:string phone:string email:string url:string services:string municipality:references

8) bin/super-scaffold crud ServiceProvider Municipality,Organization,Team name:text_field about:text_area street:text_field city:text_field state:text_field zip:text_field contact_person:text_field phone:phone_field email:email_field url:text_field services:buttons

9) text for buttons, add at config/locales/en/service_providers.en.yml, provided default for buttons is one: One, two: Two, three: Three
    long_term_housing: Long Term Housing
    immediate_housing: Immediate Housing
    finding_food: Finding Food
    family_services: Family Services
    mental_health: Mental Health Services
    substance_use: Substance Use
    immigration: Immigration
    prisoner_reentry: Prisoner Re-entry
    domestic_violence: Domestic Violence
    military: Former or Current U.S. military?

9) rake db:migrate