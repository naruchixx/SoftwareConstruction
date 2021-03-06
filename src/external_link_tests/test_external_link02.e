note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EXTERNAL_LINK02

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	on_prepare
		do
			create exception_asserter
		end

feature -- Test routines

    exception_asserter: EXCEPTION_ASSERTER

	test_external_link_adress02
			-- New test routine
		note
			testing:  "covers/{EXTERNAL_LINK}.adress"
		local
			e_link: EXTERNAL_LINK
			has_exception: BOOLEAN
		do
			if not has_exception then
			create e_link.adress ("", "text")

			assert ("test46_implemented", False)
		end

		rescue
			print ("Is the input empty? %N")
			print (exception_asserter.is_precondition_violated)
			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
			has_exception := True
			retry
		end

end





