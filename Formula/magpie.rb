class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3062/magpie-cli-darwin-arm64"
      sha256 "64ff66ad338e70e152b0c22adc214367f95f4c640320f37b5fbb26a8a03b4e47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3062/magpie-cli-darwin-amd64"
      sha256 "34a6d0e9c63ecc42cde2e8f35d911a6f77052411f1f2b5d54a7cb2ea075c27fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3062/magpie-cli-linux-arm64"
      sha256 "fba3376214575ec4e58a8276a2169fd3d390eb23ca91159d5c34eefed11afab5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3062/magpie-cli-linux-amd64"
      sha256 "d9cf6c6b3d15fe7fece93a62aa1de04ba157201b2266e4b30925b0ef10e5be80"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
