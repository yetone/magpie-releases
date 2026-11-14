class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4106/magpie-cli-darwin-arm64"
      sha256 "341d44e16ac79e4cc0005cfdb7828892b4e4fbc0636215c6da470882d38d9199"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4106/magpie-cli-darwin-amd64"
      sha256 "0c4e0494eb6e34e1c4fdccc07b91331e0f6e9919d6ba521b7a4a4c6bdfa23b67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4106/magpie-cli-linux-arm64"
      sha256 "ba0083d30f414eb8b9707d2e78a47865dc13debff8ac01017730d9f2490e15e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4106/magpie-cli-linux-amd64"
      sha256 "490effaafc4f6acb2c99cf354f9e4b74af15642dd12a2cf0d3e505bfeae7a2f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
