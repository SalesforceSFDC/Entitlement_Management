# Entitlement_Management
# Entitlements
Entitlements tell the support team which level each customer is entitled to based in their SLA.
### Process:
* You create an entitlement that entitles a particular account to phone support.
* A contact from that account calls support with a question.
* The support agent looks up the account and sees it has an active phone support entitlement.
* The agent answers the question and, if needed, creates a case from the entitlement.
#### Additional steps (i.e.):
* high-priority cases must be closed within 24 hours
* agents must respond to customer comments on cases within 4 hours

##
entitlement process -  To enforce time-dependent support steps - customizable timeline of support steps
* Entitlement processes are customizable timelines that include all of the steps (or milestones, in Salesforce lingo) that support agents must complete to resolve a case. Once you set up a process, you can apply it to as many customer entitlements as you need.
* Entitlement template - If a product that you offer includes the same support level for every customer, attach an entitlement template
    * You’ll only use entitlement templates if you use products in your org. Salesforce developer orgs come with several predefined products for you to play around with.

## Automatically Add Entitlements to Cases from Web, Email, and Communities
* Entitlements don’t automatically apply to cases created using Web-to-Case, Email-to-Case, or communities. 
* When a case is created via Web-to-Case, Email-to-Case, or a community, it isn’t automatically associated with an entitlement.
### Trigger Implementation for Automatically Adding Entitlements
* When a case’s Entitlement field is empty: 
    * `DefaultEntitlement` trigger checks whether the case contact has an active entitlement. 
* If the contact has an active entitlement:
    * the entitlement is added to the case. 
* If the contact doesn’t have an active entitlement:
    * `DefaultEntitlement` trigger then checks whether the case account has an active entitlement. 
* If the case account has an active entitlement:
    * the entitlement is added to the case. The `DefaultEntitlement` trigger helps ensure that cases are resolved according to customer support agreements.

## Service Contracts
Service contracts are agreements between you and your customers for a type of customer support.
### Steps to implement Service Contracts:
1. Customize Service Contract fields
2. Customize Service Contract page layouts
3. Set field-level security on Service Contract fields
4. Set field history tracking on Service Contracts
5. Make the Service Contracts tab visible in Salesforce and custom apps
6. Add the Service Contract related list to Account and Contact page layouts

## Add Contract Line Items to Service Contract
Set up line items to be able to specify which products a service contract covers.  
* Contract Line Items only display to users on the Contract Line Items related list on service contracts.
* You can only use line items if your Salesforce org uses Products
### Steps to add Contract Line Items:
1. Customize Contract Line Item fields
2. Customize Contract Line Item layouts
3. Customize other object's page layouts 
    * Required: Add the Contract Line Items related list to service contract page layouts.  This lets users create, edit, delete contract lines items from Service Contracts.
4. Set field-level security on Contract Line Items
5. Set field history tracking on Contract Line Items

## Set Up Milestones
1. Customize Milestone Page Layouts
2. Enable Milestone Feed Items
3. Set Up the Milestone Tracker
4. The milestone tracker gives support agents a complete view of upcoming and completed milestones, and displays countdowns for active and overdue milestones. 
* Add it to the case feed, work order feed, a custom page, or the Service Console.
5. Limit User Updates to Milestones
* Add validation rules to milestones to prevent users from updating milestones unless certain criteria are met.
6. Create a Milestone
* Milestones represent required steps in your support process, such as case resolution time and first response time. You create master
milestones in your org and then add them to entitlement processes to enforce different service levels on support records, like cases and work orders.
7. Auto-Complete Case Milestones
* Create an Apex trigger that automatically marks milestones Completed on cases that match unique criteria. In your trigger, define
which events and related case criteria must be satisfied for a milestone to be marked Completed. You can implement a similar trigger to auto-complete work order milestones.

### Trigger Scenario #1 - requires cases to be closed within a certain length of time
Create a milestone named `Resolution Time` that requires cases to be closed within a certain length of time. 
* It’s a great way to enforce case resolution terms in SLAs. 
* Trigger marks each Resolution Time milestone Completed when its case is closed. 
* This way, the support agent doesn’t have to manually mark the milestone completed after closing the case.
## Entitlements
Entitlements tell the support team which level each customer is entitled to based in their SLA.
### Process:
* You create an entitlement that entitles a particular account to phone support.
* A contact from that account calls support with a question.
* The support agent looks up the account and sees it has an active phone support entitlement.
* The agent answers the question and, if needed, creates a case from the entitlement.
#### Additional steps (i.e.):
* high-priority cases must be closed within 24 hours
* agents must respond to customer comments on cases within 4 hours

##
entitlement process -  To enforce time-dependent support steps
* Entitlement processes are customizable timelines that include all of the steps (or milestones, in Salesforce lingo) that support agents must complete to resolve a case. Once you set up a process, you can apply it to as many customer entitlements as you need.
* Entitlement template - If a product that you offer includes the same support level for every customer, attach an entitlement template
    * You’ll only use entitlement templates if you use products in your org. Salesforce developer orgs come with several predefined products for you to play around with.
    
## Links
* [Entitlement Management Help](https://help.salesforce.com/articleView?id=entitlements_help.htm&type=5)
* [Entitlement Management Trailhead](https://trailhead.salesforce.com/content/learn/modules/entitlements/entitlements_steps)
* [Service Cloud Guide on Trailblazer Community](https://help.salesforce.com/articleView?id=entitlements_milestones_parent.htm&type=5)
* https://salesforce.stackexchange.com/questions/66629/compile-error-variable-does-not-exist-userorgroupid-any-help-to-solve-this-ca
* [Error while : IN operator must be used with an iterable expression](https://salesforce.stackexchange.com/questions/96441/error-while-in-operator-must-be-used-with-an-iterable-expression/96444)
