package App::Plesk::DB::Result::Lockout;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Lockout

=cut

__PACKAGE__->table("lockout");

=head1 ACCESSORS

=head2 login

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 last_wrong

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 attempts

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "login",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "last_wrong",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "attempts",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("login");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nkNGqPxoJ+DtqZoaMCi19A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
