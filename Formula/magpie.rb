class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3235/magpie-cli-darwin-arm64"
      sha256 "1b73a63e2517c96cea82d3bc8ed2691384920db5519f349f02129cdb178f3489"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3235/magpie-cli-darwin-amd64"
      sha256 "77d007afc05447912c1bfe1762b6e2b096e9b0d6759ea75b10fd5800db52ded0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3235/magpie-cli-linux-arm64"
      sha256 "c3d9eddce4e82e8e5f2be0f1cf76dbf1d1f925c03d5697138ea669150970025e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3235/magpie-cli-linux-amd64"
      sha256 "ab5b82055209fb65c71baab43626a898010332be11b122470ee67daf349816dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
