class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4988/magpie-cli-darwin-arm64"
      sha256 "0690300744fb3f9a5854438756558b440cb1f66fac223dc6374dc1749d15406e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4988/magpie-cli-darwin-amd64"
      sha256 "4f5821a218f960687a95bdaa23430d669d37a4f6d6dcc759aaee76d3368c0992"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4988/magpie-cli-linux-arm64"
      sha256 "79afe21dc1ccd04aa34c092affbadeee33882aad663c791888a4cc2c1fd1cd1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4988/magpie-cli-linux-amd64"
      sha256 "f8ef1b2b2c80e68fa7542de09aec4fd5590c3ad3595211ee6d92b145824481be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
