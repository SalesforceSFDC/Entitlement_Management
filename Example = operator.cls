String[] dealerDeals = new String[]{d.Id,d1.Id};
    vi=[select id,
                Name,
                Brand__c,
                Description_salesprospect__c,
                dealer__Exterior_Color__c,
                dealer__Interior_Color__c,
                dealer__Stock_Number__c,
                Engine_Displacement_CC__c,
                Horsepower__c,
                dealer__Max_Torque__c,
                Dry_weight_kg__c,
                Extra_urban__c,
                CO2_emissions_g_km__c,
                dealer__Mileage__c 
                from dealer__Vehicle_Inventory__c 
                where id IN :[select dealer__Vehicle__c from dealer__Deal__c where ID IN :d.id] limit 1];
