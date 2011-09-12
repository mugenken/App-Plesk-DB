package App::Plesk::DB::Result::ItmplData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ItmplData

=cut

__PACKAGE__->table('itmpl_data');

=head1 ACCESSORS

=head2 itmpl_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 page

  data_type: 'varchar'
  is_nullable: 0
  size: 127

=head2 control

  data_type: 'varchar'
  is_nullable: 0
  size: 127

=head2 state

  data_type: 'enum'
  default_value: 'hide'
  extra: {list => ['hide','adminOnly','show']}
  is_nullable: 0

=head2 control_type

  data_type: 'enum'
  default_value: 'button'
  extra: {list => ['button','formControl']}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'itmpl_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'page',
  { data_type => 'varchar', is_nullable => 0, size => 127 },
  'control',
  { data_type => 'varchar', is_nullable => 0, size => 127 },
  'state',
  {
    data_type => 'enum',
    default_value => 'hide',
    extra => { list => ['hide', 'adminOnly', 'show'] },
    is_nullable => 0,
  },
  'control_type',
  {
    data_type => 'enum',
    default_value => 'button',
    extra => { list => ['button', 'formControl'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('itmpl_id', 'page', 'control');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/75b1ckwMs/9eKg/xxshBg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
