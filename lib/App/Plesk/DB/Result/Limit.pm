package App::Plesk::DB::Result::Limit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Limit

=cut

__PACKAGE__->table('Limits');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 limit_name

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=head2 value

  data_type: 'varbinary'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'limit_name',
  { data_type => 'varchar', is_nullable => 0, size => 245 },
  'value',
  { data_type => 'varbinary', is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key('id', 'limit_name');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qIjpKqbCmFaUV2RwrHuiPg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
