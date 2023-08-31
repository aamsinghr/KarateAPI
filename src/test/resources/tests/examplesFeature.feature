@example @ex
Feature: Using JavaScript Function

  Scenario Outline: Example : '<Eid>' - '<Type>'
    * print 'Eid:', '<Eid>'
    * print 'Eid:', '<Eid>'

    @debug
    Examples: 
      | Eid  | Type     |
      | TC_1 | positive |
      | TC_2 | negative |

    @system
    Examples: 
      | Eid  | Type     |
      | TC_3 | positive |
      | TC_4 | negative |
      # to run with both @example and @system
      # test "-Dkarate.options=--tags @example --tags @system classpath:tests" -Dtest=KarateRunner
      # OR condition
      # test "-Dkarate.options=--tags @example,@system classpath:tests" -Dtest=KarateRunner
