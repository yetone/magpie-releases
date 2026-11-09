class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3411/magpie-cli-darwin-arm64"
      sha256 "d1fcc170fffe27f556b9e6a70a1bac1b077591a108d241a0fe93a16dd3961578"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3411/magpie-cli-darwin-amd64"
      sha256 "de15cbd7669466955ed9c2980ebec8e03e2655c5aad4a7ead5ab900010b4cd5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3411/magpie-cli-linux-arm64"
      sha256 "f1dcfff6e5fbfb0e9f6955a60af84395809f616afe498b7a20cc0d39753b4453"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3411/magpie-cli-linux-amd64"
      sha256 "916e84f6d906e79002575494d25cb791d7898f2b25cb2b0c5659614324e2426b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
