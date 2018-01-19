class NodenvNvmrc < Formula
  desc "Pick a node version from .nvmrc"
  homepage "https://github.com/ouchxp/nodenv-nvmrc"
  url "https://github.com/ouchxp/nodenv-nvmrc/archive/v1.0.0.tar.gz"
  sha256 "2906357076f9854a30c313a69444a654bea06cd7f4f170a772ce0cdc71565003"
  head "https://github.com/ouchxp/nodenv-nvmrc.git"

  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /\bnvmrc\b/, shell_output("nodenv hooks which")
  end
end
