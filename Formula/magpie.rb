class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4019/magpie-cli-darwin-arm64"
      sha256 "4a47c5e69251e9696434a8eae14f9a85450f6fecfe209fba394147861edbd333"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4019/magpie-cli-darwin-amd64"
      sha256 "3560f0d686be1f1105f6cff799f106ae7cfca7f683c5e080e06aa0f981865701"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4019/magpie-cli-linux-arm64"
      sha256 "f6c89febf434d8fc433a840be79be7285c19e861938276d07ad4f64233b2747d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4019/magpie-cli-linux-amd64"
      sha256 "8b7d037c676d324ca1abbd7af830c9f4dec84da0862aa65dd548bb8c67fcab2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
