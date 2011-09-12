package App::Plesk::DB::Result::SecretKey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SecretKey

=cut

__PACKAGE__->table("secret_keys");

=head1 ACCESSORS

=head2 key_id

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "key_id",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ip_address",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mX+pPQvUSlpcKazV51shHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
