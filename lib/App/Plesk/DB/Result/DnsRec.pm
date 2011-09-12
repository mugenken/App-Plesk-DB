package App::Plesk::DB::Result::DnsRec;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DnsRec

=cut

__PACKAGE__->table("dns_recs");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 dns_zone_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 type

  data_type: 'enum'
  default_value: 'A'
  extra: {list => ["NS","A","CNAME","MX","PTR","TXT","SRV","master","none"]}
  is_nullable: 0

=head2 displayhost

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 host

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 displayval

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 val

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 opt

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 time_stamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "dns_zone_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "type",
  {
    data_type => "enum",
    default_value => "A",
    extra => {
      list => ["NS", "A", "CNAME", "MX", "PTR", "TXT", "SRV", "master", "none"],
    },
    is_nullable => 0,
  },
  "displayhost",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "host",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "displayval",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "val",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "opt",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "time_stamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ADRcnQi11YNqMQPXmG6gJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
