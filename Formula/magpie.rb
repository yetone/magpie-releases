class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4170/magpie-cli-darwin-arm64"
      sha256 "19b0a606f52f7aa05f83dd5c906458f7b2478b892f5873c7a63f7afb21baeb57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4170/magpie-cli-darwin-amd64"
      sha256 "fa1971ab7dfae4a7b6efa6cf5898b0294fe3e0ac9d133ba9298a6cf5a34d8e38"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4170/magpie-cli-linux-arm64"
      sha256 "2fdc1e080b025761ff2bb87d511df41607cfefed013fbcbdac5c5d80c24ceaf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4170/magpie-cli-linux-amd64"
      sha256 "90fd60956cd8b17d94e44e77baba4a9b58ab5b2ffec470b4fe76dab424b39f02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
