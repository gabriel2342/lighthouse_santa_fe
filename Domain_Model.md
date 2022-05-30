Organization 

rails g controller pages home about 
rails g scaffold organization name:string

rails g scaffold municipality organization:references name:string 

rails g scaffold service_provider name:string about:text street:string city:string state:string zip:string contact_person:string phone:string email:string url:string services:string municipality:references

rails db:migrate

=

    Long Term Housing: Long Term Housing
    Shelter: Shelter
    Emergency Financial Assistance: Emergency Financial Assistance
    Finding Food: Finding Food
    Transportation: Transportation
    Legal Services: Legal Services
    Family and Youth Services: Family and Youth Services
    Mental Health Services: Mental Health Services
    Substance Use: Substance Use
    Immigration: Immigration or Refugee Support
    Prisoner Re-entry: Prisoner Re-entry
    Domestic Violence: Domestic Violence
    Former or Current U.S. military?: Former or Current U.S. military??
