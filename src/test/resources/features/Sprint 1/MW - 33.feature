Feature: MW - 33 : Assests - Debt

  @Sprint11
  Scenario Outline: 
    # Go to site and log in
    Given user opens browser
    When user logs into app with the "<email>" and "<password>" as the login credentials
    Then user is on "Landing" page
    When user selects singles product
    #Select Standard will Package
    When user clicks Standard will product for singles
    Then user is on "Personal" page
    #User filled valid input
    When user selects "Dr" as title on personal page
    When user inputs "Today" as date of birth on personal page
    When user inputs "4772834" as Phone Number on personal page
    When user inputs "Consultant" as Occupation on personal page
    When user inputs "<Address1>" as Residential address line one on personal page
    When user inputs "<Suburb>" as Residential suburb on personal page
    When user selects "VIC" as Residential state on personal page
    When user selects "4103" as Residential Postcode on personal page
    When user selects Postal Address same as Residential checkbox
    When user selects no on first question
    When user selects no on second question
    When user clicks on Next button on personal page
    Then user is on "About you" page
    #Single
    When user selects "Single" as Relationship Status on about page
    And user fill up the all required fields for single status with children
    And user click the next button on the about page
    Then user is on "Assets" page
    And user clicks no to do you have assets question
    #Asset answer "no" to other question
    #Scenario 1 - Click on Debt
    And user clicks yes to do you have debts question
    And user clicks on add debt
    And user checks mandatory fields in debt
    And user fills up debt
    And user adds another debt
    And user edits debt
    And user removes debt
    And user cancels debt with unsaved changes

    #
    #
    #And user clicks no to do you have any superannuation question
    #And user clicks no to do you have life insurance separate from your superannuation
    #And user clicks no to do you control a trust question
    #And user clicks no to do you control a self-managed superannuation fund question
    #And user clicks no to do you own your own business or are you a partner in a partnership question
    #And user click the next button on the assets page
    
    
    Examples: 
      | email            | password     | Address1                                         | Suburb         |
      | demeth@gmail.com | Password123! | No.22 Diamond Street Bahayang Pagasa Imus Cavite | Executive Lane |
