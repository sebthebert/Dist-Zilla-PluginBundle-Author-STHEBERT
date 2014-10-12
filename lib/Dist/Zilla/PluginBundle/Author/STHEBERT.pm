package Dist::Zilla::PluginBundle::Author::STHEBERT;

=head1 NAME

Dist::Zilla::PluginBundle::Author::STHEBERT - STHEBERT Dist Zilla plugin bundle

=head1 DESCRIPTION

This is the Dist Zilla plugin bundle that STHEBERT uses.

=cut

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

=head1 METHODS

=head2 configure()

=cut

sub configure
{
    my $self = shift;

    $self->add_plugins(
    qw{
        RewriteVersion
        GatherDir
        MetaYAML
        PruneCruft
        
        MakeMaker
        Manifest
        
        License
        
        Readme
        
        MetaProvides::Package
    }
    );
}

=head1 AUTHOR

Sebastien Thebert <stt@onetool.pm>

=cut