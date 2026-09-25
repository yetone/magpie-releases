class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai"
  version "0.1.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.59/magpie-cli-darwin-arm64"
      sha256 "3ad28b19feef3f818d8e3279856ed157b3824a108e237b410f19fa00cae15a0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.59/magpie-cli-darwin-amd64"
      sha256 "cff810f9edfe1590030eeca6236a4db264fcce528c5f52df075d255bdeac9ba0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.59/magpie-cli-linux-arm64"
      sha256 "19e539e69fc7783f14cf79d91eb140fcd66a6d860e9d538b3e89a63aadb28c97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.59/magpie-cli-linux-amd64"
      sha256 "1e21ccf2ac89fea3a1418d3dd6221e66a09ad4313399611d4a31b345aa20982a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie 0.1.59", shell_output("#{bin}/magpie --version")
  end
end
