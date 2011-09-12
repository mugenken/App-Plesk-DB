package App::Plesk::DB::Result::CpAccess;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::CpAccess

=cut

__PACKAGE__->table("cp_access");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'enum'
  default_value: 'allow'
  extra: {list => ["allow","deny"]}
  is_nullable: 0

=head2 netaddr

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 netmask

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "type",
  {
    data_type => "enum",
    default_value => "allow",
    extra => { list => ["allow", "deny"] },
    is_nullable => 0,
  },
  "netaddr",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "netmask",
  { data_type => "varchar", is_nullable => 0, size => 15 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gSoPm+bT2gKs+qeJm4tsRQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
