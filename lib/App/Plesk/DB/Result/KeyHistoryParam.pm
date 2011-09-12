package App::Plesk::DB::Result::KeyHistoryParam;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::KeyHistoryParam

=cut

__PACKAGE__->table("key_history_params");

=head1 ACCESSORS

=head2 key_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 param

  data_type: 'varchar'
  is_nullable: 0
  size: 63

=head2 val

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "key_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "param",
  { data_type => "varchar", is_nullable => 0, size => 63 },
  "val",
  { data_type => "varbinary", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("key_id", "param");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KvkpHxS1zSLGteSrSchYeQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
