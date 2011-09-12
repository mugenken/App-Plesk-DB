package App::Plesk::DB::Result::Locale;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Locale

=cut

__PACKAGE__->table('locales');

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 17

=head2 active

  data_type: 'enum'
  default_value: 'true'
  extra: {list => ['false','true']}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'id',
  { data_type => 'varchar', is_nullable => 0, size => 17 },
  'active',
  {
    data_type => 'enum',
    default_value => 'true',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kByG8U9Cm6ruks2E2+UAtQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
