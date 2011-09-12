package App::Plesk::DB::Result::AnonFtp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::AnonFtp

=cut

__PACKAGE__->table("anon_ftp");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 max_conn

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 bandwidth

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 incoming

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 incoming_readable

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 incoming_subdirs

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 quota

  data_type: 'bigint'
  default_value: 1048576
  extra: {unsigned => 1}
  is_nullable: 1

=head2 display_login

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 login_text

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "dom_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "max_conn",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "bandwidth",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "incoming",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "incoming_readable",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "incoming_subdirs",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "status",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "quota",
  {
    data_type => "bigint",
    default_value => 1048576,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "display_login",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "login_text",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("dom_id", ["dom_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NhjoU0r4ABWInOPEqPq84Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
