Async Apex
    - Running behind the scenes.
    - 4 types.
        - future, batch, queueable, schedulable

Future
    - @future -- annotate method with this annotation
    - static. 
    - void only (nothing returns)
    - parameters? 
        - no sObject. No list<sObject>
        - only primitive, or collection of primitive datatype
        how many parameters we can have in future method? (trick)
            - any number
            - ideal is less than 6 (for any method)
    - cannot call future method from future method (directly or indirectly)
        - inserting department
            - department Trigger
                - department handler future method
                    -insert employee
                        - Employee trigger execution
                            - calling another future method

Test Future
    - startTest and StopTest are mandatory.