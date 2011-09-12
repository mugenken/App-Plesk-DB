package App::Plesk::DB::Result::Mail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Mail

=cut

__PACKAGE__->table('mail');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 mail_name

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=head2 perm_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 postbox

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 account_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 redirect

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 redir_addr

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mail_group

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 autoresponder

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 spamfilter

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 virusfilter

  data_type: 'enum'
  default_value: 'none'
  extra: {list => ['none','incoming','outgoing','any']}
  is_nullable: 0

=head2 mbox_quota

  data_type: 'bigint'
  default_value: -1
  is_nullable: 0

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'mail_name',
  { data_type => 'varchar', is_nullable => 0, size => 245 },
  'perm_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'postbox',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'account_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'redirect',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'redir_addr',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'mail_group',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'autoresponder',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'spamfilter',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'virusfilter',
  {
    data_type => 'enum',
    default_value => 'none',
    extra => { list => ['none', 'incoming', 'outgoing', 'any'] },
    is_nullable => 0,
  },
  'mbox_quota',
  { data_type => 'bigint', default_value => -1, is_nullable => 0 },
  'dom_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('dom_id', ['dom_id', 'mail_name']);
__PACKAGE__->belongs_to( domain => 'App::Plesk::DB::Result::Domain' );


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5lSoGwVroa/UHv5VvfKauw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
