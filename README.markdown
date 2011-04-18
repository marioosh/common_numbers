###MAGICK NUMBERS

Magic Numbers are numbers verfied with Luhn Algoritm like ISBN, VIN

magick_numbers gem simple verify this numbers.
In first version gem is focused on Polish numbers like:

- PESEL - (Polish ID Number)
- NIP - (Polish Taxation Identification Number)
- REGON - (Polish Company Identification Number)

but in near future will validate also:

- ISBN
- EAN
- VIN

meybe something else :)

###Instalation:

    gem install common_numbers

###Usage:

All numbers are in module MagickNumbers and have simple method `valid?`

    require 'common_numbers'
    
    CommonNumbers::Polish::Nip.new(nip_number).valid?
    CommonNumbers::Polish::Pesel.new(pesel_number).valid?
    CommonNumbers::Polish::Regon.new(regon_number).valid?

###Valid numbers:

####NIP

NIP is valid when has 11 digits witn optional '-' between
    
    1234563218
    123-456-32-18
    123-45-63-218

are valid numbers

In international notation NIP has country code as first two signs, and:

    PL1234563218
    PL123-456-32-18
    PL123-45-63-218

are also valid.

####PESEL

Pesel's valid format is 11 digits, no other signs

####REGON

Regon has two options, first 9 digits for small companies and 14 digits
with companies with regional offices.

Both are validated.



Copyright (c) 2011 Mariusz Nosiński, released under the MIT license
