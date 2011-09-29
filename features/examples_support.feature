Feature: A developer can happily run cucumber scenarios/examples an everything works fine
  As a developer
  In order to derive joy and happiness when checking my cucumber logs
  I want to see rainbows and unicorns when my log files run

  Scenario Outline: Cucumber Example Support
    Given a cucumber feature is executing against my rails application
    When I examine the rails log
    And I do some crazy Inception like test on myself
    And the features references different countries being "<country>"
    And the feature includes a reference to the price of eggs being "<price>"
    Then I see the following log entries:
    | Message                                                            | Colour           |
    | STEP INFORMATION IS WRITTEN TO THE RAILS LOG                       | black_on_green   |
    | Given a cucumber feature is executing against my rails application | black_on_yellow  |
    | When I examine the rails log                                       | black_on_yellow  |
    | And I do some crazy Inception like test on myself                  | black_on_yellow  |  
  
    Examples:
      | country   | price |
      | Australia | 2.99  |
      | Japan     | 2.69  |