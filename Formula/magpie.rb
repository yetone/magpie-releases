class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2663/magpie-cli-darwin-arm64"
      sha256 "2d9e2b345ded7775785b5e5ca9ca16ac53dc217069f9311217d549fe76a6484e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2663/magpie-cli-darwin-amd64"
      sha256 "0953f1c6919299317caecf3b5a6a29c39f7a1e6cb3f98930c9542e95a5fc3af3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2663/magpie-cli-linux-arm64"
      sha256 "2ed438068f362b0bf8c45230108d8012b38259d98e12237065e2421c389cd5b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2663/magpie-cli-linux-amd64"
      sha256 "de5d9f6b343dd7887c299d1617c8b748e5fb4d126a8dd4d6a893923d2dba8dd5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
