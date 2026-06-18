class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/8c/b9/c14ae0b9450e6927e98e325d3389dcf7850869a52f13cffc21888cce1204/vstack-3.5.1.tar.gz"
  sha256 "c92b15941bbecd120452dce034beadbac5b7227cdd5feb1a68b98d6bdae397ae"
  license "MIT"

  depends_on "libyaml"
  depends_on "python@3.13"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/vstack --help")
    assert_match(/usage:/i, output)
  end
end
