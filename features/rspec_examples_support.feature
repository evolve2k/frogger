Feature: A developer can happily run rspec examples and everything works fine
  As a developer
  In order to save time looking through log files
  I want my rspec test names to be highlighted
  
  Scenario: rSpec Example Support
    Given an rSpec test file is being executed
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

