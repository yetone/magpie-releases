class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.138/magpie-cli-darwin-arm64"
      sha256 "98e7444a222b9aeb2476703bd8dbf2f6b2ac4a3ba14423ba9832e0c677c2c121"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.138/magpie-cli-darwin-amd64"
      sha256 "7ea55f68ac486fd324d6c1657f4a78a5b1c72785e9ede123d66200c69a6793a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.138/magpie-cli-linux-arm64"
      sha256 "68a4b3185131ef366384e9ee47e77ab0baeed46c1e9a19b11a6ab3e89d142d4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.138/magpie-cli-linux-amd64"
      sha256 "11175087fd90fd8f479c1a234a81e6ebaf6f4ac36ec48ead9075925f3d89894e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
