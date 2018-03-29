module Slugify
  module InstaceMethods
    def slug
      respond_to?(:username) ? self.username.downcase.tr(' ', '-') : self.title.downcase.tr(' ', '-')
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      all.find { |instance| instance.slug == slug }
    end
  end
end
