class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2101/magpie-cli-darwin-arm64"
      sha256 "4ef6da2bf316d15881aa600dd5a5530fdbcba6c9ac90468a6b75c7837073a0f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2101/magpie-cli-darwin-amd64"
      sha256 "eb314cb0f968d91f95ba00ae45fed582535868bda2046c01d63d3adcc2e900de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2101/magpie-cli-linux-arm64"
      sha256 "46930f371ec5bc88e6e265737764e9be8881cbed9dd09775eb95a4191be3add7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2101/magpie-cli-linux-amd64"
      sha256 "34673af97f87c6fbba20f6597d8cddbb7d3eb1ce34b38d585e32c641bbbe475d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
