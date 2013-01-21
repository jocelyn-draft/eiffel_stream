note
	description: "Summary description for {UTF8_FILTER_ON_CHARACTER_8_OUTPUT_STREAM}."
	date: "$Date: 2012-10-26 10:37:48 +0200 (ven., 26 oct. 2012) $"
	revision: "$Revision: 89683 $"

class
	UTF8_FILTER_ON_CHARACTER_8_OUTPUT_STREAM

inherit
	FILTER_ON_CHARACTER_8_OUTPUT_STREAM

create
	make

feature {NONE} -- Initialization

	make (a_target: like target)
		do
			set_target (a_target)
		end

feature -- Output character

	put_character_32 (c: CHARACTER_32)
		do
			put_string_32 (create {STRING_32}.make_filled (c, 1))
		end

	put_string_32 (a_string: READABLE_STRING_32)
			-- Write `a_string' to output stream.
		local
			u: UTF_CONVERTER
		do
			target.put_string_8 (u.string_32_to_utf_8_string_8 (a_string))
		end

note
	copyright: "Copyright (c) 1984-2012, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
