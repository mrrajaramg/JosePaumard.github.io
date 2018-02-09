Feature: Word Wrap

  Scenario: Wrapping an empty line
    Given An empty line
    And a 10 columns page
    When the line is wrapped
    Then the result is an empty line

  Scenario: Wrapping an line in a longer line
    Given The following line Hello
    And a 10 columns page
    When the line is wrapped
    Then the result is:
      | Hello |

  Scenario: Wrapping an line with no space in a shorter line
    Given The following line Hello
    And a 3 columns page
    When the line is wrapped
    Then the result is:
      | Hel |
      | lo  |

  Scenario: Wrapping an line with no space in a shorter line
    Given The following line HelloWorld
    And a 4 columns page
    When the line is wrapped
    Then the result is:
      | Hell |
      | oWor |
      | ld   |

  Scenario: Wrapping an line with no space in a shorter line
    Given The following line HelloWorld
    And a 3 columns page
    When the line is wrapped
    Then the result is:
      | Hel |
      | loW |
      | orl |
      | d   |

  Scenario: Wrapping an line with a space in a shorter line
    Given The following line Hello world
    And a 7 columns page
    When the line is wrapped
    Then the result is:
      | Hello |
      | world |
