class NodenvNvmrc < Formula
  desc "Pick a node version from .nvmrc"
  homepage "https://github.com/ouchxp/nodenv-nvmrc"
  url "https://github.com/ouchxp/nodenv-nvmrc/archive/v1.0.1.tar.gz"
  sha256 "8ada13ce9c94126459ba9edcc9992b6a736e610b84027cf23cf62a24aea88614"
  head "https://github.com/ouchxp/nodenv-nvmrc.git"

  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /\bnvmrc\b/, shell_output("nodenv hooks which")
  end
end
