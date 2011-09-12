package App::Plesk::DB::Result::Hosting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Hosting

=cut

__PACKAGE__->table('hosting');

=head1 ACCESSORS

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sys_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ip_address_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 real_traffic

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 fp

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 fp_ssl

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 fp_enable

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 fp_adm

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 fp_pass

  data_type: 'varchar'
  is_nullable: 0
  size: 20

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

=head2 php_safe_mode

  data_type: 'enum'
  default_value: 'true'
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

=head2 miva

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 coldfusion

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

=head2 ssl

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 webstat

  data_type: 'enum'
  default_value: 'none'
  extra: {list => ['none','webalizer','awstats']}
  is_nullable: 0

=head2 same_ssl

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 traffic_bandwidth

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 max_connection

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  'dom_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'sys_user_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'ip_address_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'real_traffic',
  {
    data_type => 'bigint',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  'fp',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'fp_ssl',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'fp_enable',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'fp_adm',
  { data_type => 'varchar', is_nullable => 0, size => 16 },
  'fp_pass',
  { data_type => 'varchar', is_nullable => 0, size => 20 },
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
  'php_safe_mode',
  {
    data_type => 'enum',
    default_value => 'true',
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
  'miva',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'coldfusion',
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
  'ssl',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'webstat',
  {
    data_type => 'enum',
    default_value => 'none',
    extra => { list => ['none', 'webalizer', 'awstats'] },
    is_nullable => 0,
  },
  'same_ssl',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'traffic_bandwidth',
  { data_type => 'integer', default_value => -1, is_nullable => 1 },
  'max_connection',
  { data_type => 'integer', default_value => -1, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('dom_id');
__PACKAGE__->add_unique_constraint('sys_user_id', ['sys_user_id']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JfjRu/D12fgmmuEu5Chs7A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
