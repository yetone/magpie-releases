class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1131/magpie-cli-darwin-arm64"
      sha256 "6d515d8fee21ac667237a8105f4cb7ef49d5b95799651556fbefa29ee2a7c867"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1131/magpie-cli-darwin-amd64"
      sha256 "b6f0d17b98cab9481b0aaf0cdcd0e739927cba62abc07f1aa335644d83a26df6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1131/magpie-cli-linux-arm64"
      sha256 "189c033f889316405d5052b29c3712e58ef6eeccc5f6d7f0272a564454101469"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1131/magpie-cli-linux-amd64"
      sha256 "a44ca9750233ec170065927a6a39b9cc7fc01f2a248f028f275f819b7e06fc0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
