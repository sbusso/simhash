require File.join(File.dirname(__FILE__), "stopwords", "en")
require File.join(File.dirname(__FILE__), "stopwords", "ru")
require File.join(File.dirname(__FILE__), "stopwords", "fr")

module Simhash
  module Stopwords
    ALL = FR + EN
  end
end
