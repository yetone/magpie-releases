class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2651/magpie-cli-darwin-arm64"
      sha256 "ccef00a3a1c13568ad2412368cfcdda634eca43dcde670673bdc679772d7d7b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2651/magpie-cli-darwin-amd64"
      sha256 "2e8190e0d5b918d0df3c3d04c0211194cf238550777e3fa65e46549d259344d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2651/magpie-cli-linux-arm64"
      sha256 "1f7ea4e26b52027ce585bfebde4f16c7ecfa690495ba46ca7225e3f7b5ddb29c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2651/magpie-cli-linux-amd64"
      sha256 "f222d158383fa91f1210ed6e2bc9bc6e831ed76af8fc91bec89a83cf44f8591a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
