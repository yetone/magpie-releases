class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4398/magpie-cli-darwin-arm64"
      sha256 "a477696122380b5166366e81edf0d4c1c2bd8053509b8a53ff1ee819ee19a7b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4398/magpie-cli-darwin-amd64"
      sha256 "41a61377889ea7e42e84b3b2e2c55570bd02f3965760d1a40d76a82d53c6ba8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4398/magpie-cli-linux-arm64"
      sha256 "a641c4681ca11fa98a0d66b259e963b6a997b7903ac96f3ce74ba09af4a8df16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4398/magpie-cli-linux-amd64"
      sha256 "1aa37346c2fd87a9f64cc7fd8d4aeba8f8d40034d51391e3e9ced81a2f2ded74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
