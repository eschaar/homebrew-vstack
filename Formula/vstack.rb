class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/8c/b9/c14ae0b9450e6927e98e325d3389dcf7850869a52f13cffc21888cce1204/vstack-3.5.1.tar.gz"
  sha256 "c92b15941bbecd120452dce034beadbac5b7227cdd5feb1a68b98d6bdae397ae"
  license "MIT"

  depends_on "python@3.11"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/vstack --help")
    assert_match(/usage:/i, output)
  end
end
