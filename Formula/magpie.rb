class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2757/magpie-cli-darwin-arm64"
      sha256 "0ecc1539bb684cfbd90c85f8ebdd42267f7cc3cb94090e18f26dfc2ee1de28ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2757/magpie-cli-darwin-amd64"
      sha256 "09a8b05ed1a0fa5a5dd892b4d3a11a6f582223e1c2aa26523e0299f900e5ed48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2757/magpie-cli-linux-arm64"
      sha256 "5e02ceee976923a482db8754ab52f44fbf6b839393537db0df1d0a3aa2f99f71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2757/magpie-cli-linux-amd64"
      sha256 "c0cd9873ce44ce1cf66e7606a2f12a0ed559287561fc933a449ab53730d2ad79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
