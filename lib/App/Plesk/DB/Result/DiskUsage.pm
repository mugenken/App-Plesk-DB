package App::Plesk::DB::Result::DiskUsage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DiskUsage

=cut

__PACKAGE__->table("disk_usage");

=head1 ACCESSORS

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 httpdocs

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 httpsdocs

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 subdomains

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 web_users

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 anonftp

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 logs

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dbases

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 mailboxes

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 webapps

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 maillists

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 domaindumps

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 configs

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 chroot

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dom_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "httpdocs",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "httpsdocs",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "subdomains",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "web_users",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "anonftp",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "logs",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "dbases",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "mailboxes",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "webapps",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "maillists",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "domaindumps",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "configs",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "chroot",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("dom_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xKtWrTJEjrBfgKv5nDflww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
