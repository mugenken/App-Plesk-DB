package App::Plesk::DB::Result::KeyHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::KeyHistory

=cut

__PACKAGE__->table("key_history");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 plesk_key_id

  data_type: 'varchar'
  is_nullable: 1
  size: 63

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 filename

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 register_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 update_disabled

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 options

  data_type: 'varchar'
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
  "plesk_key_id",
  { data_type => "varchar", is_nullable => 1, size => 63 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "filename",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "register_date",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "update_disabled",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "options",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0zSgOUxZ7PicSvdmriAvUQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
