Acts As Flags
===============

Installation
---------------
**In your Project's Gemfile**
> gem 'acts_as_flags'

How to use it
---------------
**In your model**
> acts_as_flags :flags, %w[ sent re_sent ]

**In your migration**
> \#rails g migration AddFlagsMaskToFoo
>
> add_column :foos, :flags_mask, :integer
>
> \#rake db:migrate

Instance Methods
----------------

**Flags setter and getter**

> @foo.flags = [ "sent" ]
>
> @foo.flags
>
> => [ "sent" ]

Class Methods
----------------

**Searching records by flags**

It will create a method for each possible flag

**ex:**

> Foo.only_sent
>
> => Return all foos with the flagged sent
>
> Foo.only_re_sent
>
> => Return all foos with the flagged re_sent

**Getting the available flags foy your field**

available_\<field\> will give you the available flags for that field

**Ex:**

> Foo.available_flags
>
> => ["sent", "re_sent"]




