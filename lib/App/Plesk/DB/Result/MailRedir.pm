package App::Plesk::DB::Result::MailRedir;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::MailRedir

=cut

__PACKAGE__->table('mail_redir');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 mn_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 address

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'mn_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'address',
  { data_type => 'varchar', is_nullable => 0, size => 245 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->belongs_to( mail => 'App::Plesk::DB::Result::Mail',
    { 'foreign.id' => 'self.mn_id' }
);



# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VncO6n36m4G5gc4BkXm0Mw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
