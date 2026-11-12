class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3919/magpie-cli-darwin-arm64"
      sha256 "3a752eefb2929d26e6e5f36ac58a53ea037fc30ee881cdc11679cf8b570b457f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3919/magpie-cli-darwin-amd64"
      sha256 "b8c00af05c11d8d7b610d4a8faa5f76697d1caeb3823af40cd2f46fdf54ad8af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3919/magpie-cli-linux-arm64"
      sha256 "8969d9cdb416b590a8e68fb40c71c53ae660f3dde3040e6709336dfff591e603"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3919/magpie-cli-linux-amd64"
      sha256 "317a3c80f85b53ebe427c941e2fe2c128a265cb0bfad40df1703bd94fd5b5afa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
