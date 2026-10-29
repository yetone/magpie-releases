class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2093/magpie-cli-darwin-arm64"
      sha256 "e5a5246624d9dc10b448e1081f395c8cf2d525ef4fc38b5844c875d964719de1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2093/magpie-cli-darwin-amd64"
      sha256 "db8a15375b31f4555999c265298c3595ea58ca036c422446f4002930beef1d97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2093/magpie-cli-linux-arm64"
      sha256 "cd3f41fac08726c605107f68b5aab523455505b55983cff7b39db707b86b8379"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2093/magpie-cli-linux-amd64"
      sha256 "a31e172e3bfdd9e2b4a1c2a15bc6c229d340a8b002113cbc29ceef189a2162d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
