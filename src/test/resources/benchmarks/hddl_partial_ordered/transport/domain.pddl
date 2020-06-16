(define (domain transport)
	(:requirements :typing :partial-ordered-htn)
	(:types
		package - locatable
		capacity-number - object
		location - object
		target - object
		vehicle - locatable
		locatable - object
	)
	(:predicates
		(road ?arg0 - location ?arg1 - location)
		(at ?arg0 - locatable ?arg1 - location)
		(in ?arg0 - package ?arg1 - vehicle)
		(capacity ?arg0 - vehicle ?arg1 - capacity-number)
		(capacity-predecessor ?arg0 - capacity-number ?arg1 - capacity-number)
	)

	(:tasks
		(deliver ?p - package ?l - location)
	 	(get_to ?v - vehicle ?l - location)
		(load ?v - vehicle ?l - location ?p - package)
	    (unload ?v - vehicle ?l - location ?p - package)
	)

	(:method m_deliver_ordering_0
		:parameters (?l1 - location ?l2 - location ?p - package ?v - vehicle)
		:task (deliver ?p ?l2)
		:subtasks (and
		 (task0 (get_to ?v ?l2))
		 (task1 (load ?v ?l1 ?p))
		 (task2 (get_to ?v ?l2))
		 (task3 (unload ?v ?l2 ?p))
		)
		:ordering (and
			(task0 < task1)
			(task1 < task2)
			(task2 < task3)
		)
	)

	(:method m_unload_ordering_0
		:parameters (?l - location ?p - package ?s1 - capacity-number ?s2 - capacity-number ?v - vehicle)
		:task (unload ?v ?l ?p)
		:subtasks (and
		 (task0 (drop ?v ?l ?p ?s1 ?s2))
		)
	)

	(:method m_load_ordering_0
		:parameters (?l - location ?p - package ?s1 - capacity-number ?s2 - capacity-number ?v - vehicle)
		:task (load ?v ?l ?p)
		:subtasks (and
		 (task0 (pick_up ?v ?l ?p ?s1 ?s2))
		)
	)

	(:method m_drive_to_ordering_0
		:parameters (?l1 - location ?l2 - location ?v - vehicle)
		:task (get_to ?v ?l2)
		:subtasks (and
		 (task0 (drive ?v ?l1 ?l2))
		)
	)

	(:method m_drive_to_via_ordering_0
		:parameters (?l2 - location ?l3 - location ?v - vehicle)
		:task (get_to ?v ?l3)
		:subtasks (and
		 (task0 (get_to ?v ?l2))
		 (task1 (drive ?v ?l2 ?l3))
		)
		:ordering (and
			(task0 < task1)
		)
	)

	(:method m_i_am_there_ordering_0
		:parameters (?l - location ?v - vehicle)
		:task (get_to ?v ?l)
		:subtasks (and
		 (task0 (noop ?v ?l))
		)
	)

	(:action drive
		:parameters (?v - vehicle ?l1 - location ?l2 - location)
		:precondition
			(and
				(at ?v ?l1)
				(road ?l1 ?l2)
			)
		:effect
			(and
				(not (at ?v ?l1))
				(at ?v ?l2)
			)
	)

	(:action noop
		:parameters (?v - vehicle ?l2 - location)
		:precondition
			(and
				(at ?v ?l2)
			)
		:effect ()
	)

	(:action pick_up
		:parameters (?v - vehicle ?l - location ?p - package ?s1 - capacity-number ?s2 - capacity-number)
		:precondition
			(and
				(at ?v ?l)
				(at ?p ?l)
				(capacity-predecessor ?s1 ?s2)
				(capacity ?v ?s2)
			)
		:effect
			(and
				(not (at ?p ?l))
				(in ?p ?v)
				(capacity ?v ?s1)
				(not (capacity ?v ?s2))
			)
	)

	(:action drop
		:parameters (?v - vehicle ?l - location ?p - package ?s1 - capacity-number ?s2 - capacity-number)
		:precondition
			(and
				(at ?v ?l)
				(in ?p ?v)
				(capacity-predecessor ?s1 ?s2)
				(capacity ?v ?s1)
			)
		:effect
			(and
				(not (in ?p ?v))
				(at ?p ?l)
				(capacity ?v ?s2)
				(not (capacity ?v ?s1))
			)
	)
)
