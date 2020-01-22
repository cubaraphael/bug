class ProConstraint
  def self.matches?(request)
    subdomain = %w{ pro }
    request.subdomain.present? && subdomain.include?(request.subdomain)
  end
end
