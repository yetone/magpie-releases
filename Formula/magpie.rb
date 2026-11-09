class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3363/magpie-cli-darwin-arm64"
      sha256 "6fb0cc4763455e7f6bf3c024ec0d2fef23864718b2d11bcb4cc5a649a7d5d968"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3363/magpie-cli-darwin-amd64"
      sha256 "91b6370f8343d2f1317f816671b30bda6284d01c59d64feb5c8cd64288380c7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3363/magpie-cli-linux-arm64"
      sha256 "7ad75e7b3614f559361fb13c595ad496d80626d613d077d4000f6064cc96dc4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3363/magpie-cli-linux-amd64"
      sha256 "e912202b64b52b71af352e90588f19a0bf4e9f7cc6a18a4cbadb1a54f1837207"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
