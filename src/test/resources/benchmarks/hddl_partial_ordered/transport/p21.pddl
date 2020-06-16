(define (problem p21)
 (:domain transport)
 (:objects
  city-loc-0 city-loc-1 city-loc-2 city-loc-3 city-loc-4 city-loc-5 city-loc-6 city-loc-7 - location
  truck-0 truck-1 truck-2 - vehicle
  package-0 package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 - package
  capacity-0 capacity-1 capacity-2 - capacity-number
 )
 (:htn
  :subtasks (and
   (deliver package-0 city-loc-2)
   (deliver package-1 city-loc-6)
   (deliver package-2 city-loc-2)
   (deliver package-3 city-loc-1)
   (deliver package-4 city-loc-2)
   (deliver package-5 city-loc-0)
   (deliver package-6 city-loc-3)
   (deliver package-7 city-loc-0)
   (deliver package-8 city-loc-0)
   )
  :ordering ( )
  :constraints ( ))
 (:init
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (road city-loc-0 city-loc-4)
  (road city-loc-1 city-loc-2)
  (road city-loc-1 city-loc-7)
  (road city-loc-2 city-loc-1)
  (road city-loc-2 city-loc-2)
  (road city-loc-2 city-loc-7)
  (road city-loc-3 city-loc-4)
  (road city-loc-3 city-loc-5)
  (road city-loc-3 city-loc-6)
  (road city-loc-4 city-loc-0)
  (road city-loc-4 city-loc-3)
  (road city-loc-4 city-loc-4)
  (road city-loc-5 city-loc-3)
  (road city-loc-5 city-loc-5)
  (road city-loc-5 city-loc-6)
  (road city-loc-5 city-loc-7)
  (road city-loc-6 city-loc-3)
  (road city-loc-6 city-loc-5)
  (road city-loc-6 city-loc-7)
  (road city-loc-7 city-loc-1)
  (road city-loc-7 city-loc-2)
  (road city-loc-7 city-loc-5)
  (road city-loc-7 city-loc-6)
  (at package-0 city-loc-0)
  (at package-1 city-loc-4)
  (at package-2 city-loc-6)
  (at package-3 city-loc-0)
  (at package-4 city-loc-7)
  (at package-5 city-loc-3)
  (at package-6 city-loc-4)
  (at package-7 city-loc-7)
  (at package-8 city-loc-6)
  (at truck-0 city-loc-5)
  (at truck-1 city-loc-4)
  (at truck-2 city-loc-2)
  (capacity truck-0 capacity-2)
  (capacity truck-1 capacity-2)
  (capacity truck-2 capacity-2)
 )
)
