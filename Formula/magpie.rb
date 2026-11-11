class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3701/magpie-cli-darwin-arm64"
      sha256 "87abf8d836e5fb4e93eeab3f6e54727fc88b183c1cfdaab2d614c5ac1b5fe8df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3701/magpie-cli-darwin-amd64"
      sha256 "649748b15c517fa267da84ee417162cf53c45d1fc8bcc66a3b8c30d35c48a361"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3701/magpie-cli-linux-arm64"
      sha256 "0db800ecfdd80d9b005ff9284e4e272038c8733ff72f49a82ad7e89b037716d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3701/magpie-cli-linux-amd64"
      sha256 "a3402c0dd668e8391ad1322bbf85cfb35c9bee62de8aa5140f47f03f9f1a5e53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
