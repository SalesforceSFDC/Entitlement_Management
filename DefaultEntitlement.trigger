trigger DefaultEntitlement on Case (Before Insert, Before Update) {
    List<EntitlementContact> entlContact = 
                [SELECT e.EntitlementId, e.ContactId, e.Entitlement.AssetId
                    FROM EntitlementContact e 
                    WHERE e.ContactId in :contactIds
                    AND e.Entitlement.EndDate >= Today
                    AND e.Entitlement.StartDate => Today];
    if (entlContact.isEmpty() == false) {
        for (Case c : Trigger.new) {
            if (c.EntitlementId == null && c.ContactId != null) {
                for(EntitlementContact ec:entlContact) {
                    if (ec.ContactId == c.ContactId) {
                        c.EntitlementId = ec.EntitlementId;
                        if (c.AssetId == null && ec.Entitlement.AssetId!=null)
                            c.AssetId = ec.Entitlement.AssetId;
                        break;
                    }
                }
            }
        }
    } else {
        List <Entitlement> entls = [SELECT e.StartDate, e.Id, e.EndDate, e.AccountId, e.AssetId
                                    FROM Entitlement e
                                    WHERE e.AccountId in :acctIds
                                    AND e.EndDate >= Today
                                    AND e.StartDate <= Today];
        if (entls.isEmpty() == false) {
            for (Case c : Trigger.new) {
                if (c.EntitlementId == null && c.AccountId != null) {
                    for (Entitlement e:entls) {
                        if (e.AccountId == c.AccountId) {
                            c.EntitlementId = e.Id;
                            if (c.AssetId == null && e.AssetId != null) 
                                c.AssetId = e.AssetId;
                            break;
                        }
                    }
                }
            }
        }
    }
}
