class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4944/magpie-cli-darwin-arm64"
      sha256 "a320d37f1c4ddf3a95992378c121e6fc5a6ea6583f9eb73070d80dc75ff497a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4944/magpie-cli-darwin-amd64"
      sha256 "0021a4188b791e7a731b8dafc5724e3f064ecfea24fafc42545df8a3a8214db4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4944/magpie-cli-linux-arm64"
      sha256 "e0dda61d109fe0f0541a5dd339d0bbaa7220cfae272f6ab1f5d0d0b6b4e79bee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4944/magpie-cli-linux-amd64"
      sha256 "04a52c243375c16979b8fc3bb32dc63e490a2cdfab922855cf43ab1fbf46a032"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
