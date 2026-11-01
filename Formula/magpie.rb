class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2557/magpie-cli-darwin-arm64"
      sha256 "cf42741524d57ab43450e47f0f4fbb9254ff439ddb47bb7b9e7f60e4f3520b3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2557/magpie-cli-darwin-amd64"
      sha256 "ec8bb6d29718a0d9f76ea45d1a80d6dd3b9815f1b8d2974dfb280f86739da084"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2557/magpie-cli-linux-arm64"
      sha256 "3e7b2d6c8c1129bf14a8bfabadae26c2084a60b9d30ea81daafd97fc99a2238e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2557/magpie-cli-linux-amd64"
      sha256 "01e63b270bdb4f32b003fdbc9e859c645caff151cddf6218305bc61c752c2062"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
