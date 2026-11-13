class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4090/magpie-cli-darwin-arm64"
      sha256 "915fb5eb463038c1a19ace3f9d35581e25b93202b20bfe4b97a07c06a29d5309"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4090/magpie-cli-darwin-amd64"
      sha256 "f9c4a1b1c79627714f0bf9081f89e0cacbc48bcd80450c28bf42fe80b3893eed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4090/magpie-cli-linux-arm64"
      sha256 "5432d973c1316ad7d7184f0d41d3117c36b693598984cb8ba5ade49a02e09f7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4090/magpie-cli-linux-amd64"
      sha256 "e378accb29b5b71a61b29663ceca7ecbc715a119d2af39471f4fb42c845f7235"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
