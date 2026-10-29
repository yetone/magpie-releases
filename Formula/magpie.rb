class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2007/magpie-cli-darwin-arm64"
      sha256 "a03aa8b4e1ae2b33b9cb3aeaf98b7cd2b5e711bc10f43d8e4e773bdb5d33a080"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2007/magpie-cli-darwin-amd64"
      sha256 "8403ba5b5445a1ac01e4b39b6f586409cb7830a2a03b31bee552beb6344fe5d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2007/magpie-cli-linux-arm64"
      sha256 "94665e2df71f11e23d82ff66fa5f9e42cdd048ba77b33c593938864a6586cb73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2007/magpie-cli-linux-amd64"
      sha256 "61d19a08d868dd801c1890472e85d7b049b399e83459256215f537c222006cc9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
