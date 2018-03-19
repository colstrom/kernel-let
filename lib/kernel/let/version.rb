module Kernel
  module Let
    VERSION = $LOADED_FEATURES
                .map { |f| f.match %r{/kernel-let-(?<version>[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]+(\.pre)?)} }
                .compact
                .map { |gem| gem['version'] }
                .uniq
                .first
  end
end
