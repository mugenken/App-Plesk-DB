package App::Plesk::DB::Result::DomLevelUsr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DomLevelUsr

=cut

__PACKAGE__->table('dom_level_usrs');

=head1 ACCESSORS

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 account_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 state

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 card_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 perm_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  'dom_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'account_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'state',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'card_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'perm_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('dom_id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5FeVzjLeBodCpqaYLpZCLg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
