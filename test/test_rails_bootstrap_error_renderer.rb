require "test_helper"

class TestRailsBootstrapErrorRenderer < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RailsBootstrapErrorRenderer::VERSION
  end

  def test_add_class_to_label
    html = %(<label class="form-label" for="user_email">E-mail</label>)
    expected = %(<label class="form-label is-invalid" for="user_email">E-mail</label>)
    builder = mock
    builder.expects(:raw).with(expected)
    RailsBootstrapErrorRenderer.render(html, builder)
  end

  def test_adds_error_class_and_message
    html = %(<input type="text">)
    expected = %(<input type="text" class="is-invalid">\n<div class="invalid-feedback">is invalid</div>)
    builder = mock
    builder.expects(:error_message).returns(["is invalid"])
    builder.expects(:raw).with(expected)

    RailsBootstrapErrorRenderer.render(html, builder)
  end
end
