class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1083/magpie-cli-darwin-arm64"
      sha256 "b0532c2bd7b4c9d5bcb3addce9966ed6f65191484a1f0a4485a0301fcd44be66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1083/magpie-cli-darwin-amd64"
      sha256 "17411856cd1542dc28154187c3880618ae83cdbd40c70a6ad33073d4efd34bd2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1083/magpie-cli-linux-arm64"
      sha256 "192e60a08aa2329c405a85e60c2d839b864aa35eeb7deffc5ccc645fd3ccba09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1083/magpie-cli-linux-amd64"
      sha256 "f526cb771f0cbc5652c6a967788bc1559f74d5a2e7bb276e08736478e5e11c76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
