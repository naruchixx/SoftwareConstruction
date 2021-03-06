note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ANCHOR_LINK06

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			-- Initializie our exception asserter
			create exception_asserter

		end

feature
	exception_asserter: EXCEPTION_ASSERTER

	test_anchor_link_make06
		local
			anchorlink: ANCHOR_LINK
			has_exception: BOOLEAN

		do
			if not has_exception then

			create anchorlink.make ("in this test we want to show that preconditions are violated if the link inputs five hundreds character count input is exceeded. For trying purposes, I am trying to write a long sentence so we can prove that our implemented library works as we meant to and expected, if this is not the case, we need to revise our implemetation and correct it so it runs as desired. I ran out of stuff to write, five hundred characters are too many characters. So let us write some gibberish hereeeeeeeeeeeeeeeeeeeeee.", "text")
			assert("Test 06",False)
			end
		rescue
			print("Did the input exceede the 500 character limit? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
			has_exception := True
			retry


		end

end -- class TEST_ANCHOR_LINK06
