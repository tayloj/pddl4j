(define (problem p09)
 (:domain transport)
 (:objects
  city-loc-0 city-loc-1 city-loc-2 city-loc-3 city-loc-4 city-loc-5 - location
  truck-0 - vehicle
  package-0 package-1 package-2 package-3 package-4 package-5 package-6 - package
  capacity-0 capacity-1 capacity-2 capacity-3 - capacity-number
 )
 (:htn
  :subtasks (and
   (deliver package-0 city-loc-1)
   (deliver package-1 city-loc-2)
   (deliver package-2 city-loc-4)
   (deliver package-3 city-loc-1)
   (deliver package-4 city-loc-2)
   (deliver package-5 city-loc-1)
   (deliver package-6 city-loc-4)
   )
  :ordering ( )
  :constraints ( ))
 (:init
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (road city-loc-0 city-loc-5)
  (road city-loc-1 city-loc-1)
  (road city-loc-1 city-loc-4)
  (road city-loc-2 city-loc-4)
  (road city-loc-3 city-loc-5)
  (road city-loc-4 city-loc-1)
  (road city-loc-4 city-loc-2)
  (road city-loc-5 city-loc-0)
  (road city-loc-5 city-loc-3)
  (at package-0 city-loc-4)
  (at package-1 city-loc-4)
  (at package-2 city-loc-1)
  (at package-3 city-loc-2)
  (at package-4 city-loc-1)
  (at package-5 city-loc-4)
  (at package-6 city-loc-1)
  (at truck-0 city-loc-4)
  (capacity truck-0 capacity-3)
 )
)
