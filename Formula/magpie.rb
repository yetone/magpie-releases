class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4350/magpie-cli-darwin-arm64"
      sha256 "94839d0ab65ef8a5767d1ae0357044f24992ebb70609c7c27baf09f2585c9f5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4350/magpie-cli-darwin-amd64"
      sha256 "d518e81cb545050842232bddc9186d7b903285718fbca70dddf520b83c657914"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4350/magpie-cli-linux-arm64"
      sha256 "b7627964629700034cd22c06ed0bdfca3062fe882b0316cb97828227c9f4e80c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4350/magpie-cli-linux-amd64"
      sha256 "a0fe7a75b78eb584a2547e02dd45fc9d1b37b229085b68758b6aa4c9cadc1a27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
