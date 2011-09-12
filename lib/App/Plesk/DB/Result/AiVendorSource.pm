package App::Plesk::DB::Result::AiVendorSource;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::AiVendorSource

=cut

__PACKAGE__->table("ai_vendor_sources");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'enum'
  extra: {list => ["repomd","directory"]}
  is_nullable: 0

=head2 url

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=head2 priority

  data_type: 'integer'
  default_value: 500
  extra: {unsigned => 1}
  is_nullable: 0

=head2 enabled

  data_type: 'enum'
  default_value: 'true'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 auth_required

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 login

  data_type: 'varbinary'
  is_nullable: 1
  size: 255

=head2 password

  data_type: 'varbinary'
  is_nullable: 1
  size: 255

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
    extra => { list => ["repomd", "directory"] },
    is_nullable => 0,
  },
  "url",
  { data_type => "varbinary", is_nullable => 0, size => 255 },
  "priority",
  {
    data_type => "integer",
    default_value => 500,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "enabled",
  {
    data_type => "enum",
    default_value => "true",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "auth_required",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "login",
  { data_type => "varbinary", is_nullable => 1, size => 255 },
  "password",
  { data_type => "varbinary", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("url", ["url"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5D1yc7g2dQi95E6g0Wxa3g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
