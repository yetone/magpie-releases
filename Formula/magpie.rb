class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3993/magpie-cli-darwin-arm64"
      sha256 "475f62fda880661903e68989e84399f41e6c6d7a838b024d83d792abe603293e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3993/magpie-cli-darwin-amd64"
      sha256 "008e477fdff26846ad55c765d26b3052d8a4510e8e651ff2abe14dcefc7bd8e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3993/magpie-cli-linux-arm64"
      sha256 "9f0c8036e0de7bd9844418ad348525c22cfc54634a0df45f07a5d657f9fcd10a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3993/magpie-cli-linux-amd64"
      sha256 "2cb08f62987522d32998643bc92608fc150a26c5ce1f64a7ce700f3594a5650b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
