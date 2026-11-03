class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2877/magpie-cli-darwin-arm64"
      sha256 "b558e17af9e18e64d55b38efc53dc464347d6eff9dd06035ce8955618691217e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2877/magpie-cli-darwin-amd64"
      sha256 "73ef83b7174047886a05b1db461f913e17acbd9f6ad06fa254287750d864364b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2877/magpie-cli-linux-arm64"
      sha256 "38e1128aa46f5355ecebe5310e3a7655f2ee1982d3d661922b641927823c8765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2877/magpie-cli-linux-amd64"
      sha256 "2f55340eff7bf4f58934d143634909693278bdc101b30eba8cff964a5a0ac62a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
