(define (problem p26)
 (:domain transport)
 (:objects
  city-loc-0 city-loc-1 city-loc-2 city-loc-3 city-loc-4 city-loc-5 city-loc-6 city-loc-7 city-loc-8 city-loc-9 city-loc-10 city-loc-11 city-loc-12 city-loc-13 city-loc-14 city-loc-15 city-loc-16 city-loc-17 city-loc-18 city-loc-19 - location
  truck-0 truck-1 truck-2 truck-3 - vehicle
  package-0 package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15 package-16 package-17 package-18 package-19 - package
  capacity-0 capacity-1 capacity-2 capacity-3 - capacity-number
 )
 (:htn
  :subtasks (and
   (deliver package-0 city-loc-2)
   (deliver package-1 city-loc-7)
   (deliver package-2 city-loc-10)
   (deliver package-3 city-loc-13)
   (deliver package-4 city-loc-12)
   (deliver package-5 city-loc-15)
   (deliver package-6 city-loc-3)
   (deliver package-7 city-loc-0)
   (deliver package-8 city-loc-17)
   (deliver package-9 city-loc-13)
   (deliver package-10 city-loc-8)
   (deliver package-11 city-loc-13)
   (deliver package-12 city-loc-3)
   (deliver package-13 city-loc-13)
   (deliver package-14 city-loc-6)
   (deliver package-15 city-loc-0)
   (deliver package-16 city-loc-11)
   (deliver package-17 city-loc-19)
   (deliver package-18 city-loc-12)
   (deliver package-19 city-loc-16)
   )
  :ordering ( )
  :constraints ( ))
 (:init
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (road city-loc-0 city-loc-18)
  (road city-loc-0 city-loc-9)
  (road city-loc-1 city-loc-4)
  (road city-loc-1 city-loc-5)
  (road city-loc-1 city-loc-11)
  (road city-loc-1 city-loc-15)
  (road city-loc-2 city-loc-3)
  (road city-loc-3 city-loc-2)
  (road city-loc-3 city-loc-19)
  (road city-loc-3 city-loc-9)
  (road city-loc-3 city-loc-13)
  (road city-loc-3 city-loc-14)
  (road city-loc-4 city-loc-1)
  (road city-loc-4 city-loc-17)
  (road city-loc-4 city-loc-19)
  (road city-loc-4 city-loc-4)
  (road city-loc-4 city-loc-15)
  (road city-loc-5 city-loc-16)
  (road city-loc-5 city-loc-1)
  (road city-loc-5 city-loc-6)
  (road city-loc-6 city-loc-16)
  (road city-loc-6 city-loc-5)
  (road city-loc-6 city-loc-11)
  (road city-loc-6 city-loc-13)
  (road city-loc-7 city-loc-17)
  (road city-loc-7 city-loc-11)
  (road city-loc-8 city-loc-16)
  (road city-loc-8 city-loc-17)
  (road city-loc-8 city-loc-11)
  (road city-loc-9 city-loc-0)
  (road city-loc-9 city-loc-3)
  (road city-loc-9 city-loc-19)
  (road city-loc-10 city-loc-18)
  (road city-loc-11 city-loc-16)
  (road city-loc-11 city-loc-1)
  (road city-loc-11 city-loc-6)
  (road city-loc-11 city-loc-7)
  (road city-loc-11 city-loc-8)
  (road city-loc-12 city-loc-17)
  (road city-loc-13 city-loc-17)
  (road city-loc-13 city-loc-19)
  (road city-loc-13 city-loc-3)
  (road city-loc-13 city-loc-6)
  (road city-loc-13 city-loc-14)
  (road city-loc-14 city-loc-3)
  (road city-loc-14 city-loc-13)
  (road city-loc-15 city-loc-1)
  (road city-loc-15 city-loc-4)
  (road city-loc-16 city-loc-5)
  (road city-loc-16 city-loc-6)
  (road city-loc-16 city-loc-8)
  (road city-loc-16 city-loc-11)
  (road city-loc-17 city-loc-4)
  (road city-loc-17 city-loc-7)
  (road city-loc-17 city-loc-8)
  (road city-loc-17 city-loc-12)
  (road city-loc-17 city-loc-13)
  (road city-loc-18 city-loc-0)
  (road city-loc-18 city-loc-10)
  (road city-loc-19 city-loc-3)
  (road city-loc-19 city-loc-4)
  (road city-loc-19 city-loc-9)
  (road city-loc-19 city-loc-13)
  (at package-0 city-loc-5)
  (at package-1 city-loc-16)
  (at package-2 city-loc-6)
  (at package-3 city-loc-16)
  (at package-4 city-loc-2)
  (at package-5 city-loc-17)
  (at package-6 city-loc-16)
  (at package-7 city-loc-19)
  (at package-8 city-loc-15)
  (at package-9 city-loc-0)
  (at package-10 city-loc-6)
  (at package-11 city-loc-5)
  (at package-12 city-loc-10)
  (at package-13 city-loc-8)
  (at package-14 city-loc-19)
  (at package-15 city-loc-7)
  (at package-16 city-loc-12)
  (at package-17 city-loc-4)
  (at package-18 city-loc-15)
  (at package-19 city-loc-6)
  (at truck-0 city-loc-14)
  (at truck-1 city-loc-7)
  (at truck-2 city-loc-18)
  (at truck-3 city-loc-18)
  (capacity truck-0 capacity-3)
  (capacity truck-1 capacity-3)
  (capacity truck-2 capacity-3)
  (capacity truck-3 capacity-3)
 )
)
