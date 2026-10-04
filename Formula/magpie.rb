class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.900/magpie-cli-darwin-arm64"
      sha256 "1f70eabd9504dafa05ef53a7d69cebec5174e47b4dddf09e58457ab7ff8e28d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.900/magpie-cli-darwin-amd64"
      sha256 "77ce88ad2d65b00c7de17004db2c24df3bcb8ed8d5fc12ea9a84116c72fbc997"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.900/magpie-cli-linux-arm64"
      sha256 "24e222cd7f1ede179115d33c10838f9b6ebf7d8dbcf1c4980b99f9fed8d32b17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.900/magpie-cli-linux-amd64"
      sha256 "45d867ac3025bf9daac50d70b19ccf4f6d583e7c8220a0f7381aef9363b2cc19"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
