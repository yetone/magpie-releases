class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3250/magpie-cli-darwin-arm64"
      sha256 "44f5133378a530d8d7baea6ecbf84546ca3af96d6c6bc9dd8142dfdf60de932f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3250/magpie-cli-darwin-amd64"
      sha256 "7c9b255eda9ab4d25390e8b55b7c61b18dc4a6ad6ec22035c1102fbdaf150da2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3250/magpie-cli-linux-arm64"
      sha256 "00f5a1f4d4ca010a02ef3fa9a451f5cd58f4f65e4810aaef668190f5fcf9f5b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3250/magpie-cli-linux-amd64"
      sha256 "00302a7f917e92bb8e71c3e67d80d9fa057301e01fc016379d7359ba51b1949d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
