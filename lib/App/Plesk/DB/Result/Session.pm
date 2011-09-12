package App::Plesk::DB::Result::Session;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Session

=cut

__PACKAGE__->table('sessions');

=head1 ACCESSORS

=head2 sess_id

  data_type: 'varchar'
  is_nullable: 0
  size: 33

=head2 type

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 login

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 login_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 click_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'sess_id',
  { data_type => 'varchar', is_nullable => 0, size => 33 },
  'type',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 0 },
  'login',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'ip_address',
  { data_type => 'varchar', is_nullable => 0, size => 15 },
  'login_time',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  'click_time',
  {
    data_type => 'timestamp',
    datetime_undef_if_invalid => 1,
    default_value => \'current_timestamp',
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('sess_id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lcs+DKQkV6jl3UGJJG5TDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
