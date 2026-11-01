class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2612/magpie-cli-darwin-arm64"
      sha256 "5e018af2dde28397b3b6dbbfea43c535c20ad5138244d3d9671fcf69d6afa34a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2612/magpie-cli-darwin-amd64"
      sha256 "40f085fb42a829043c456d41fa80ea4747f95a62a623ba3f96599b2731dfb1e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2612/magpie-cli-linux-arm64"
      sha256 "cce7f3c5ba8359dfa589b7494b1773b8878efe89bb192b9e8a1cb0e25b296d2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2612/magpie-cli-linux-amd64"
      sha256 "ba80f42e7306ab78ed93c0832725d1b0b104961e504123a0beb200c0d285e911"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
