package App::Plesk::DB::Result::TtsTicketEvent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::TtsTicketEvent

=cut

__PACKAGE__->table("tts_ticket_events");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ticket_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 event_type

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 public

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 reporter_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 created_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 descr

  data_type: 'text'
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
  "ticket_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "event_type",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "public",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "reporter_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "created_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "descr",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BV2cR8Be63h1XK0Jhko2Wg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
