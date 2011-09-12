package App::Plesk::DB::Result::ClParam;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ClParam

=cut

__PACKAGE__->table('cl_param');

=head1 ACCESSORS

=head2 cl_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 param

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=head2 val

  data_type: 'varbinary'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  'cl_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'param',
  { data_type => 'varchar', is_nullable => 0, size => 245 },
  'val',
  { data_type => 'varbinary', is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key('cl_id', 'param');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:h0LE5TzKoIgk9x4xb3Yigw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
