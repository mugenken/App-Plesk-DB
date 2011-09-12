package App::Plesk::DB::Result::Misc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Misc

=cut

__PACKAGE__->table('misc');

=head1 ACCESSORS

=head2 param

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 val

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  'param',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'val',
  { data_type => 'varbinary', is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key('param');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DDNNRa0MTh1YScr28PrEtg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
