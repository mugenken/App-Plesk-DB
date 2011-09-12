package App::Plesk::DB::Result::SiteapppackagesApscategory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SiteapppackagesApscategory

=cut

__PACKAGE__->table("siteapppackages_apscategories");

=head1 ACCESSORS

=head2 siteapppackage_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 apscategory_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 order

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "siteapppackage_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "apscategory_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "order",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vV69xyqvI7kwSbNkCi/YSw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
