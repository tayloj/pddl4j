(define (problem p12)
 (:domain transport)
 (:objects
  city-loc-0 city-loc-1 city-loc-2 city-loc-3 city-loc-4 - location
  truck-0 truck-1 - vehicle
  package-0 package-1 package-2 package-3 - package
  capacity-0 capacity-1 capacity-2 - capacity-number
 )
 (:htn
  :subtasks (and
   (deliver package-0 city-loc-0)
   (deliver package-1 city-loc-2)
   (deliver package-2 city-loc-2)
   (deliver package-3 city-loc-3)
   )
  :ordering ( )
  :constraints ( ))
 (:init
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (road city-loc-0 city-loc-0)
  (road city-loc-0 city-loc-4)
  (road city-loc-1 city-loc-1)
  (road city-loc-1 city-loc-2)
  (road city-loc-1 city-loc-3)
  (road city-loc-1 city-loc-4)
  (road city-loc-2 city-loc-1)
  (road city-loc-2 city-loc-3)
  (road city-loc-3 city-loc-1)
  (road city-loc-3 city-loc-2)
  (road city-loc-4 city-loc-0)
  (road city-loc-4 city-loc-1)
  (at package-0 city-loc-3)
  (at package-1 city-loc-1)
  (at package-2 city-loc-3)
  (at package-3 city-loc-1)
  (at truck-0 city-loc-1)
  (at truck-1 city-loc-1)
  (capacity truck-0 capacity-2)
  (capacity truck-1 capacity-2)
 )
)
