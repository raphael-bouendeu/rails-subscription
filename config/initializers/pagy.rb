require 'pagy/extras/bootstrap'
require 'pagy/extras/overflow'

Pagy::VARS[:items]   = 6
Pagy::VARS[:cycle]   = true

Pagy::VARS[:overflow] = :last_page
