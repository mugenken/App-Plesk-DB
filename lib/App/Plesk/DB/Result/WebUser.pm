package App::Plesk::DB::Result::WebUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::WebUser

=cut

__PACKAGE__->table('web_users');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sys_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ssi

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 php

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 cgi

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 perl

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 python

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 fastcgi

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 asp

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 asp_dot_net

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
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
  'dom_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'sys_user_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'ssi',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'php',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'cgi',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'perl',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'python',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'fastcgi',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'asp',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'asp_dot_net',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('sys_user_id', ['sys_user_id']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BrzFGXLHnIO+xj82Pq77KQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
