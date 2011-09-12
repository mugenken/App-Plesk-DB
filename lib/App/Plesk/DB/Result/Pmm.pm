package App::Plesk::DB::Result::Pmm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Pmm

=cut

__PACKAGE__->table('PMM');

=head1 ACCESSORS

=head2 sessionid

  data_type: 'varbinary'
  is_nullable: 0
  size: 250

=head2 param

  data_type: 'varchar'
  is_nullable: 0
  size: 250

=head2 val

  data_type: 'varbinary'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  'sessionid',
  { data_type => 'varbinary', is_nullable => 0, size => 250 },
  'param',
  { data_type => 'varchar', is_nullable => 0, size => 250 },
  'val',
  { data_type => 'varbinary', is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key('sessionid', 'param');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YuaHRjsJ6vZtPhJAL3Y6Xw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
