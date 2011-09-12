package App::Plesk::DB::Result::PasswordSecret;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::PasswordSecret

=cut

__PACKAGE__->table("password_secrets");

=head1 ACCESSORS

=head2 secret

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 created

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "secret",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "type",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "created",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("secret");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2PKONHhlav1n7bYIRMo4wg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
