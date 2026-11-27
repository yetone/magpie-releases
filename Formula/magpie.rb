class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4969/magpie-cli-darwin-arm64"
      sha256 "6e7107eb91d631e44b7c03a23f539166af006492fca7ce7649a63b452ef1dcc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4969/magpie-cli-darwin-amd64"
      sha256 "73197a254494823698ef9d27626e01298ec2157911f95199d19ea8c479737361"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4969/magpie-cli-linux-arm64"
      sha256 "6f89a9c4457e4fce8d86ea20739976bab356ca897467a195f69261f205e0b3c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4969/magpie-cli-linux-amd64"
      sha256 "12bed723d3684c43fbc92e2dfcbf73d1b0c43c6a0f332a2f31a35cca5d86556f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
