package App::Plesk::DB::Result::Notification;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Notification

=cut

__PACKAGE__->table('Notifications');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 send2admin

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 send2client

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 send2dlu

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 send2email

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 subj

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 note_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'status',
  { data_type => 'varchar', is_nullable => 0, size => 1 },
  'send2admin',
  { data_type => 'varchar', is_nullable => 0, size => 1 },
  'send2client',
  { data_type => 'varchar', is_nullable => 0, size => 1 },
  'send2dlu',
  { data_type => 'varchar', is_nullable => 0, size => 1 },
  'send2email',
  { data_type => 'varchar', is_nullable => 0, size => 1 },
  'email',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'subj',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'note_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:62V8m+r0fQ40qCPG1RRaxA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
