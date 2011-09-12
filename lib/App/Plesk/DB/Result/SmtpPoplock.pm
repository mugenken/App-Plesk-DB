package App::Plesk::DB::Result::SmtpPoplock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SmtpPoplock

=cut

__PACKAGE__->table("smtp_poplocks");

=head1 ACCESSORS

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 ip_mask

  data_type: 'integer'
  default_value: 32
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lock_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ip_address",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "ip_mask",
  {
    data_type => "integer",
    default_value => 32,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "lock_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4AUyWFbEhO1AdGIQ8Y/N/w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
