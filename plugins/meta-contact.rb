##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Meta-Contact" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-20
version "0.1"
description "This plugin retrieves the contact name or email from the meta contact tag."

matches [

# Get contact details
{ :version=>/<meta[^>]+name[\s]*=[\s]*[\'|\"]?author[^>]+contact[\s]*=[\s]*[\'|\"]?([^\'^\"\/^>]+)/i, :version_regexp_offset=>0 },
{ :version=>/<meta[^>]+content[\s]*=[\s]*[\'|\"]?([^\"^\']+)[^>]+name[\s]*=[\s]*[\'|\"]?contact/i, :version_regexp_offset=>0 },

]

end
