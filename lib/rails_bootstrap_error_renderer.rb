require_relative "rails_bootstrap_error_renderer/version"

require "nokogiri"
require "active_support"
require "active_support/core_ext"

module RailsBootstrapErrorRenderer
  IGNORED_TYPES = %w[checkbox hidden]

  def self.render(html, instance)
    fragment = Nokogiri::HTML::DocumentFragment.parse(html)
    element = fragment.children[0]
    if element
      render_for_element(element, instance)
    else
      html
    end
  end

  def self.render_for_element(element, instance)
    element.add_class("is-invalid")
    if applicable_input? element
      instance.raw(
        %(#{element.to_html} <div class="invalid-feedback">#{[*instance.error_message].to_sentence}</div>)
      )
    else
      instance.raw element.to_html
    end
  end

  def self.applicable_input?(element)
    %w[input select textarea].include?(element.name) && !IGNORED_TYPES.member?(element.attributes["type"]&.to_s)
  end
end
