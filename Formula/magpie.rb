class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3611/magpie-cli-darwin-arm64"
      sha256 "95e13f1d9f06b1cae9934b1dea7774791df7717954275ff59831694e91d0c0b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3611/magpie-cli-darwin-amd64"
      sha256 "f7d347b82dbe4712c16d432864c0ec8f9d13cc122e415f304910e1ddda7d49ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3611/magpie-cli-linux-arm64"
      sha256 "1a7ebf409cf0b2fe958ea1581e616e372f82784feee7dc8dfc281431b2cc7a36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3611/magpie-cli-linux-amd64"
      sha256 "f4fa6c2faa6919178632b35f02e6152e7a1f31f773d71c0722ee63935d13523f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
