class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4129/magpie-cli-darwin-arm64"
      sha256 "40ff1725f6a1b2b9e4e34c84edb6faedfa1f94f3f9bade8cc926c35453c0f0c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4129/magpie-cli-darwin-amd64"
      sha256 "03df9e572ecf16729b12490faf56c2b10e704c58b579c0201df8bb0fed98f911"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4129/magpie-cli-linux-arm64"
      sha256 "4f415f74079ef48a6f087ead3418eeb25b7907c62c8df6a5695eb2bb89fe9349"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4129/magpie-cli-linux-amd64"
      sha256 "b2f418e9702ea56cbb684ff81df3cea8c0b5d84553618564e5a3b069c62740b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
