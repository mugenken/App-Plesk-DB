package App::Plesk::DB::Result::Ssobranding;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Ssobranding

=cut

__PACKAGE__->table("SSOBranding");

=head1 ACCESSORS

=head2 http_request_domain

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 idp_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "http_request_domain",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "idp_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("http_request_domain");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MZaTpMDVJE/yF0jL5r8k1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
