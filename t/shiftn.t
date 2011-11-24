#!/usr/bin/perl

use perl5i::2;
use Test::More;

note "shiftn with no args"; {
    my @array = (1, 2, 3, 4);
    my @newarray = @array->shiftn();

    my @want = (1, 2, 3, 4);
    my @newwant = ();

    is_deeply \@array, \@want;
    is_deeply \@newarray, \@newwant;
}

note "shiftn with arg < 0"; {
    my @array = (1, 2, 3, 4, 5);
    my @newarray = @array->shiftn(-20);
    
    my @want = (1, 2, 3, 4, 5);
    my @newwant = ();
    
    is_deeply \@array, \@want;
    is_deeply \@newarray, \@newwant;
}

note "shiftn with arg == 0"; {
    my @array = (1, 2, 3);
    my @newarray = @array->shiftn(0);
    
    my @want = (1, 2, 3);
    my @newwant = ();
    
    is_deeply \@array, \@want;
    is_deeply \@newarray, \@newwant;
}

note "shiftn with arg > 0"; {
    my @array = (1, 2, 3, 4, 5);
    my @newarray = @array->shiftn(3);
    
    my @want = (4, 5);
    my @newwant = (1, 2, 3);
    
    is_deeply \@array, \@want;
    is_deeply \@newarray, \@newwant;
}

note "shiftn with arg > length of array"; {
    my @array = (1, 2, 3, 4);
    my @newarray = @array->shiftn(50);

    my @want = ();
    my @newwant = (1, 2, 3, 4);
    
    is_deeply \@array, \@want;
    is_deeply \@newarray, \@newwant;
}

done_testing();
