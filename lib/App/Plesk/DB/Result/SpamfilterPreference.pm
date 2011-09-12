package App::Plesk::DB::Result::SpamfilterPreference;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SpamfilterPreference

=cut

__PACKAGE__->table("spamfilter_preferences");

=head1 ACCESSORS

=head2 prefid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 spamfilter_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 preference

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "prefid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "spamfilter_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "preference",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("prefid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4k0eZg9jM8V6r+hF2YkY/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
