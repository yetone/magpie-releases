class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4632/magpie-cli-darwin-arm64"
      sha256 "97ecc1ddc0a601e5d0d84efc3f80b70943a3dccb47005ad107a866a9d17e9b31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4632/magpie-cli-darwin-amd64"
      sha256 "1248be55ede0192f10690ae646e555cbfdbcf7121d0bc0c7f4c12dfb5ffb17a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4632/magpie-cli-linux-arm64"
      sha256 "d2e3306f09650c788fbbe442f65c4655c8f2744f28a406fd548394566ce2f414"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4632/magpie-cli-linux-amd64"
      sha256 "967e18cc07a766ebbe3b89c99cad7589aac67705cdaafe821100b24ee0c39e4a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
