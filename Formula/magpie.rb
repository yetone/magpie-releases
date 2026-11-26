class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4873/magpie-cli-darwin-arm64"
      sha256 "cc6b60bc85a694199dd3a1cbf5453f812f96b0ca8ec83bc87110d7bad930cadc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4873/magpie-cli-darwin-amd64"
      sha256 "5144942c5fda23232e257edb2ac1f9c3cb18d53202853e4f626e431ebb1ef69e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4873/magpie-cli-linux-arm64"
      sha256 "4b111fc83707490a2ddac418831c9069cbb66841a51c2dcbb59633f26fa18576"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4873/magpie-cli-linux-amd64"
      sha256 "f06c0cdc42b658e9f138789a96a9ad940faf3ef36cc4cb7b82019437fb4f91a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
