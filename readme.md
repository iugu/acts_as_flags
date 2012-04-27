Acts As Flags
===============

Installation
---------------
**In your Project's Gemfile**
> gem 'acts_as_flags'

How to use it
---------------
**Add it to your model**
> acts_as_flags :flags, %w[ sent re-sent ]

**Add flag mask to your table**
> #rails g migration AddFlagsMaskToFoo
>
> add_column :foos, :flags_mask, :integer
>
> #rake db:migrate

Instance Methods
----------------

**Flags setter and getter**

> @foo.flags = [ "sent" ]
>
> @foo.flags
>
> => [ "sent" ]




