class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2730/magpie-cli-darwin-arm64"
      sha256 "9fc238cd4cb0aa50baff0eecaccd4bd6a83f07575749f63e85eef091da23e582"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2730/magpie-cli-darwin-amd64"
      sha256 "1e8bd08097f58e7661e5dd2d0e8545aa6d0d9cbfb747e755b17079b5c7f22ead"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2730/magpie-cli-linux-arm64"
      sha256 "c350deca5375188dc00dd5664ed1b93618579b64e18fcfbc7775814ee3d22f82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2730/magpie-cli-linux-amd64"
      sha256 "284ddf97cccd3aae202a2e1a48a34cf8b0b7209e5f66052d9d77644f24999eb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
