package App::Plesk::DB::Result::MassMail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::MassMail

=cut

__PACKAGE__->table("mass_mail");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 from_email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 to_admin

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 to_clients

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 to_clients_mode

  data_type: 'enum'
  default_value: 'all'
  extra: {list => ["all","select","except"]}
  is_nullable: 0

=head2 to_domains

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 to_domains_mode

  data_type: 'enum'
  default_value: 'all'
  extra: {list => ["all","select","except"]}
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 body

  data_type: 'text'
  is_nullable: 0

=head2 cdate

  data_type: 'date'
  datetime_undef_if_invalid: 1
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
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "from_email",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "to_admin",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "to_clients",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "to_clients_mode",
  {
    data_type => "enum",
    default_value => "all",
    extra => { list => ["all", "select", "except"] },
    is_nullable => 0,
  },
  "to_domains",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "to_domains_mode",
  {
    data_type => "enum",
    default_value => "all",
    extra => { list => ["all", "select", "except"] },
    is_nullable => 0,
  },
  "subject",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "body",
  { data_type => "text", is_nullable => 0 },
  "cdate",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kB11nkqkVkWV3Aup62J7oQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
