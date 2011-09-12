package App::Plesk::DB::Result::RespFreq;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::RespFreq

=cut

__PACKAGE__->table("resp_freq");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 rn_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=head2 num

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 time_resp

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
  "rn_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 245 },
  "num",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "time_resp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("rn_id", ["rn_id", "email"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ehEK8pUr0DPdDMIE5LyABA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
