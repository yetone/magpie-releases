class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1891/magpie-cli-darwin-arm64"
      sha256 "42ca1cae0ef943e4fd2c131f8c18936ccae8c511b677ea512f3c3943a4986be6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1891/magpie-cli-darwin-amd64"
      sha256 "3c7e35f6a61c610fd74249ff5dec4f025373ff42a02cf0abaed6473762b5b632"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1891/magpie-cli-linux-arm64"
      sha256 "c9214200dafc38fb9cf02c7278b30c36f216e3526f70ee6c1400b559903e6918"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1891/magpie-cli-linux-amd64"
      sha256 "df27edae3202b0ac6764895c82d9375ee1d54c76c24a5e2d7c26632c3e5f7134"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
