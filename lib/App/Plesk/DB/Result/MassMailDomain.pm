package App::Plesk::DB::Result::MassMailDomain;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::MassMailDomain

=cut

__PACKAGE__->table("mass_mail_domains");

=head1 ACCESSORS

=head2 mm_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "mm_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "dom_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);
__PACKAGE__->add_unique_constraint("mm_id_2", ["mm_id", "dom_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:74NOJWrR/DiVcCyDJ40kvQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
